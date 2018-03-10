package asterixReadOnlyClient;

import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.Bytes;
import com.mongodb.CommandResult;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MapReduceCommand;
import com.mongodb.MapReduceOutput;

public class MongoDbQueryExecutor {
	
	public static final String FBU_COLL_NAME = "fbu";
	public static final String FBM_COLL_NAME = "fbm";
	public static final String TWM_COLL_NAME = "twm";
	public static final String FBM_NO_IX_FIELD = "author_id_copy";
	public static final String FBU_NO_IX_FIELD = "id_copy";
	public static final String TWM_NO_IX_FIELD = "user.friends_count";
	public static final String TWM_TEMPORAL_INDEXED_FIELD = "send_time";
	public static final String FBU_ID_FIELD_NAME = "_id";
	public static final String FBU_TEMPORAL_INDEXED_FILED = "user_since";
	public static final String TWM_KWIX_ATT = "message_text";
	public static final String FBM_TEMPORAL_FIELD = "send_time";
	public static final String FBU_FBM_IX_JOIN_ATT = "author_id";
	public static final String FBU_FBM_noIX_JOIN_ATT = "author_id_copy";
	public static final String FBU_JOIN_PRJ_ATT = "name";
	public static final String FBM_JOIN_PRJ_ATT = "message";
	public static final String TWM_SPATIAL_ATT = "sender_location";
	
	DB db;
	HashMap<String, DBCollection> dbColls;
	PrintWriter resPw;
	Random rand;
	boolean doSeqJoin;	
	boolean immortal;

	public MongoDbQueryExecutor(DB db, boolean seqJoin, boolean immortalCursor, PrintWriter resPw){
		this.db = db;
		this.doSeqJoin = seqJoin;
		this.immortal = immortalCursor;
		this.resPw = resPw;
		this.dbColls = new HashMap<String, DBCollection>();
		rand = new Random(System.currentTimeMillis());
	}

	public void addDBCollection(String cName){
		if(!dbColls.containsValue(cName)){
			DBCollection coll = db.getCollection(cName);
			dbColls.put(cName, coll);
			return;
		}
		
		System.out.println("DBCollection already exists for "+cName);
	}

	public StatsPair executeQuery(int qid, int vid, List<IArgument> args){
		StatsPair stats = null;
		switch(qid){
		
		case 100:
			long key_100 = -3L;
			stats = lookupKeyValue(qid, FBM_COLL_NAME, FBM_NO_IX_FIELD, key_100);
			break;
			
		case 200:
			long key_200 = -3L;
			stats = lookupKeyValue(qid, FBU_COLL_NAME, FBU_NO_IX_FIELD, key_200);
			break;
			
		case 300:
			long key_300 = -1L;
			stats = lookupKeyValue(qid, TWM_COLL_NAME, TWM_NO_IX_FIELD, key_300);
			break;
		
		case 101:
			long key_101 = ((LongArgument) args.get(0)).getValue();
			stats = lookupKeyValue(qid, FBU_COLL_NAME, FBU_ID_FIELD_NAME, key_101);
			break;
			
		case 102:
			long skey_102 = ((LongArgument) args.get(0)).getValue();
			long ekey_102 = ((LongArgument) args.get(1)).getValue();
			stats = scanRange(qid, FBU_COLL_NAME, FBU_ID_FIELD_NAME, skey_102, ekey_102);
			break;
			
		case 103:
			GregorianCalendar sDate_103 = ((DateTimeArgument) args.get(0)).getGCalendar();
			GregorianCalendar eDate_103 = ((DateTimeArgument) args.get(1)).getGCalendar();
			stats = scanTemporalRange(qid, FBU_COLL_NAME, FBU_TEMPORAL_INDEXED_FILED, sDate_103, eDate_103);
			break;
			
		case 104:
			GregorianCalendar sDate_104 = ((DateTimeArgument) args.get(0)).getGCalendar();
			GregorianCalendar eDate_104 = ((DateTimeArgument) args.get(1)).getGCalendar();
			stats = eQuantification(qid, FBU_COLL_NAME, FBU_TEMPORAL_INDEXED_FILED, sDate_104, eDate_104);
			break;
			
		case 105:
			GregorianCalendar sDate_105 = ((DateTimeArgument) args.get(0)).getGCalendar();
			GregorianCalendar eDate_105 = ((DateTimeArgument) args.get(1)).getGCalendar();
			stats = uQuantification(qid, FBU_COLL_NAME, FBU_TEMPORAL_INDEXED_FILED, sDate_105, eDate_105);
			break;
			
		case 106:
			GregorianCalendar sDate_106 = ((DateTimeArgument) args.get(0)).getGCalendar();
			GregorianCalendar eDate_106 = ((DateTimeArgument) args.get(1)).getGCalendar();
			stats = globalAggregate(qid, TWM_COLL_NAME, TWM_TEMPORAL_INDEXED_FIELD, sDate_106, eDate_106, false);
			break;
			
		case 206:
			stats = globalAggregate(qid, TWM_COLL_NAME, null, null, null, true);
			break;
			
		case 107:
			GregorianCalendar sDate_107 = ((DateTimeArgument) args.get(0)).getGCalendar();
			GregorianCalendar eDate_107 = ((DateTimeArgument) args.get(1)).getGCalendar();
			stats = groupedAggregation(qid, TWM_COLL_NAME, TWM_TEMPORAL_INDEXED_FIELD, sDate_107, eDate_107);
			break;
			
		case 108:
			GregorianCalendar sDate_108 = ((DateTimeArgument) args.get(0)).getGCalendar();
			GregorianCalendar eDate_108 = ((DateTimeArgument) args.get(1)).getGCalendar();
			stats = topK(qid, 10, TWM_COLL_NAME, TWM_TEMPORAL_INDEXED_FIELD, sDate_108, eDate_108, false);
			break;
			
		case 408:
			stats = topK(qid, 10, TWM_COLL_NAME, null, null, null, true);
			break;
			
		case 109:
			double centerX = ((DoubleArgument) args.get(0)).getValue();
			double centerY = ((DoubleArgument) args.get(1)).getValue();
			double selRadius = ((DoubleArgument) args.get(2)).getValue();
			stats = spatialSelection(qid, TWM_COLL_NAME, centerX, centerY, selRadius);
			break;
			
		case 1010:
			String keyword = ((StringArgument) args.get(0)).getValue();
			stats = keywordSearch(qid, TWM_COLL_NAME, TWM_TEMPORAL_INDEXED_FIELD, TWM_KWIX_ATT, keyword, immortal);
			break;
			
		case 1011:
			GregorianCalendar usrSDate_noIX_join = ((DateTimeArgument) args.get(0)).getGCalendar();
			GregorianCalendar usrEDate_noIX_join = ((DateTimeArgument) args.get(1)).getGCalendar();
			GregorianCalendar msgSDate_noIX_join = ((DateTimeArgument) args.get(2)).getGCalendar();
			GregorianCalendar msgEDate_noIX_join = ((DateTimeArgument) args.get(3)).getGCalendar();
//			if(doSeqJoin){
//				stats = selectJoin(qid, FBU_COLL_NAME, FBM_COLL_NAME,
//						FBU_TEMPORAL_INDEXED_FILED, FBM_TEMPORAL_FIELD, FBU_FBM_noIX_JOIN_ATT,
//							FBU_JOIN_PRJ_ATT, FBM_JOIN_PRJ_ATT,
//								usrSDate_noIX_join, usrEDate_noIX_join,
//									msgSDate_noIX_join, msgEDate_noIX_join,
//										immortal);
//			}
//			else {
//				System.out.println("Only Sequential Join is supported.");
//				stats = new StatsPair();
//			}
			break;
			
		case 2011:
			GregorianCalendar usrSDate_IX_join = ((DateTimeArgument) args.get(0)).getGCalendar();
			GregorianCalendar usrEDate_IX_join = ((DateTimeArgument) args.get(1)).getGCalendar();
			GregorianCalendar msgSDate_IX_join = ((DateTimeArgument) args.get(2)).getGCalendar();
			GregorianCalendar msgEDate_IX_join = ((DateTimeArgument) args.get(3)).getGCalendar();
//			if(doSeqJoin){
//				stats = selectJoin(qid, FBU_COLL_NAME, FBM_COLL_NAME,
//						FBU_TEMPORAL_INDEXED_FILED, FBM_TEMPORAL_FIELD, FBU_FBM_IX_JOIN_ATT,
//							FBU_JOIN_PRJ_ATT, FBM_JOIN_PRJ_ATT,
//								usrSDate_IX_join, usrEDate_IX_join,
//									msgSDate_IX_join, msgEDate_IX_join,
//										immortal);
//			}
//			else{
//				System.err.println("Only Sequential Join is supported.");
//				stats = new StatsPair();
//			}
			break;
			
		case 1012:
			GregorianCalendar usrSDate_noIX_lojoin = ((DateTimeArgument) args.get(0)).getGCalendar();
			GregorianCalendar usrEDate_noIX_lojoin = ((DateTimeArgument) args.get(1)).getGCalendar();
			GregorianCalendar msgSDate_noIX_lojoin = ((DateTimeArgument) args.get(2)).getGCalendar();
			GregorianCalendar msgEDate_noIX_lojoin = ((DateTimeArgument) args.get(3)).getGCalendar();
//			if(doSeqJoin){
//				stats = selectLeftOuterJoin(qid, FBU_COLL_NAME, FBM_COLL_NAME,
//											FBU_TEMPORAL_INDEXED_FILED, FBM_TEMPORAL_FIELD, FBU_FBM_noIX_JOIN_ATT,
//												FBU_JOIN_PRJ_ATT, FBM_JOIN_PRJ_ATT,
//													usrSDate_noIX_lojoin, usrEDate_noIX_lojoin,
//														msgSDate_noIX_lojoin, msgEDate_noIX_lojoin,
//															immortal);
//			}
//			else{
//				System.err.println("Only Sequential Join is supported.");
//				stats = new StatsPair();
//			}
			break;
			
		case 2012:
			GregorianCalendar usrSDate_IX_lojoin = ((DateTimeArgument) args.get(0)).getGCalendar();
			GregorianCalendar usrEDate_IX_lojoin = ((DateTimeArgument) args.get(1)).getGCalendar();
			GregorianCalendar msgSDate_IX_lojoin = ((DateTimeArgument) args.get(2)).getGCalendar();
			GregorianCalendar msgEDate_IX_lojoin = ((DateTimeArgument) args.get(3)).getGCalendar();
			
//			if(doSeqJoin){
//				stats = selectLeftOuterJoin(qid, FBU_COLL_NAME, FBM_COLL_NAME,
//						FBU_TEMPORAL_INDEXED_FILED, FBM_TEMPORAL_FIELD, FBU_FBM_IX_JOIN_ATT,
//							FBU_JOIN_PRJ_ATT, FBM_JOIN_PRJ_ATT,
//								usrSDate_IX_lojoin, usrEDate_IX_lojoin,
//									msgSDate_IX_lojoin, msgEDate_IX_lojoin,
//										immortal);
//			}
//			else{
//				System.err.println("Only Sequential Join is supported.");
//				stats = new StatsPair();
//			}
			break;
			
		case 3012:
			GregorianCalendar usrSDate_noIX_loSinglejoin = ((DateTimeArgument) args.get(0)).getGCalendar();
			GregorianCalendar usrEDate_noIX_loSinglejoin = ((DateTimeArgument) args.get(1)).getGCalendar();
//			if(doSeqJoin){
//				stats = selectLeftOuterJoin(qid, FBU_COLL_NAME, FBM_COLL_NAME,
//						FBU_TEMPORAL_INDEXED_FILED, FBM_TEMPORAL_FIELD, FBU_FBM_noIX_JOIN_ATT,
//							FBU_JOIN_PRJ_ATT, FBM_JOIN_PRJ_ATT,
//								usrSDate_noIX_loSinglejoin, usrEDate_noIX_loSinglejoin,
//									null, null,
//										immortal);
//			}
//			else{
//				System.err.println("Only Sequential Join is supported.");
//				stats = new StatsPair();
//			}
			break;
			
		case 4012:
			GregorianCalendar usrSDate_IX_loSinglejoin = ((DateTimeArgument) args.get(0)).getGCalendar();
			GregorianCalendar usrEDate_IX_loSinglejoin = ((DateTimeArgument) args.get(1)).getGCalendar();
//			if(doSeqJoin){
//				stats = selectLeftOuterJoin(qid, FBU_COLL_NAME, FBM_COLL_NAME,
//						FBU_TEMPORAL_INDEXED_FILED, FBM_TEMPORAL_FIELD, FBU_FBM_IX_JOIN_ATT,
//							FBU_JOIN_PRJ_ATT, FBM_JOIN_PRJ_ATT,
//								usrSDate_IX_loSinglejoin, usrEDate_IX_loSinglejoin,
//									null, null,
//										immortal);
//			}
//			else{
//				System.err.println("Only Sequential Join is supported.");
//				stats = new StatsPair();
//			}
			break;
			
		case 1014:
			GregorianCalendar twSDate = ((DateTimeArgument) args.get(0)).getGCalendar();
			GregorianCalendar twEDate = ((DateTimeArgument) args.get(1)).getGCalendar();
			double joinRadius = ((DoubleArgument) args.get(2)).getValue();
			stats = spatialJoin(qid, TWM_COLL_NAME, TWM_TEMPORAL_INDEXED_FIELD, TWM_SPATIAL_ATT, twSDate, twEDate, joinRadius, immortal);
			break;
		
		default:
			System.err.println("Unknown qid for mongodb "+qid+" version "+vid);	
		}
		if (stats == null) { stats = new StatsPair(); }
		return stats;
	}

	private StatsPair lookupKeyValue(int qid, String collection, String field, long val){
		BasicDBObject query = new BasicDBObject(field, val);
		return runBasicDBObjectQuery(qid, collection, query, null, immortal);
	}

	private StatsPair scanRange(int qid, String collection, String field, long sVal, long eVal){
		BasicDBObject query = new BasicDBObject(field, new BasicDBObject("$gte", sVal).append("$lt", eVal) );
		return runBasicDBObjectQuery(qid, collection, query, null, immortal);
	}
	
	//range scan on a temporal attribute
	private StatsPair scanTemporalRange(int qid, String collection, String field, GregorianCalendar sDate, GregorianCalendar eDate){
		BasicDBObject query = new BasicDBObject(field, new BasicDBObject("$gte", sDate.getTime()).append("$lt", eDate.getTime()) );
		return runBasicDBObjectQuery(qid, collection, query, null, immortal);
	}
	
	private StatsPair eQuantification(int qid, String collection, String filterField, GregorianCalendar sDate, GregorianCalendar eDate){
		BasicDBObject filter = new BasicDBObject("user_since", new BasicDBObject("$gte", sDate.getTime()).append("$lt", eDate.getTime()) );

		BasicDBObject exists = new BasicDBObject("$exists", false);
		BasicDBObject end = new BasicDBObject("end_date", exists);
		BasicDBObject elemMatch = new BasicDBObject("$elemMatch", end);

		BasicDBObject query = filter.append("employment", elemMatch);
		
		BasicDBObject prjFields = new BasicDBObject();
		prjFields.put("_id", 0);
		prjFields.put("name",1);
		prjFields.put("employment",1);
		
		return runBasicDBObjectQuery(qid, collection, query, prjFields, immortal);
	}
	
	private StatsPair uQuantification(int qid, String collection, String filterField, GregorianCalendar sDate, GregorianCalendar eDate){
		BasicDBObject filter = new BasicDBObject("user_since", new BasicDBObject("$gte", sDate.getTime()).append("$lt", eDate.getTime()) );

		BasicDBObject exists = new BasicDBObject("$exists", false);
		BasicDBObject end = new BasicDBObject("end_date", exists);
		BasicDBObject elemMatch = new BasicDBObject("$elemMatch", end);
		BasicDBObject emp = new BasicDBObject("$not",elemMatch);

		BasicDBObject query = filter.append("employment", emp);
		
		BasicDBObject prjFields = new BasicDBObject();
		prjFields.put("_id", 0);
		prjFields.put("name",1);
		prjFields.put("employment",1);
		
		return runBasicDBObjectQuery(qid, collection, query, prjFields, immortal);
	}
	
	private StatsPair globalAggregate(int qid, String collection, String filterField, GregorianCalendar sDate, GregorianCalendar eDate, boolean isFull){
		String map ="function() { emit(1, this.message_text.length); }";
		String reduce = "function(key, values) { return Array.avg( values ) }";
		BasicDBObject query = null;
		if(!isFull){
			query = new BasicDBObject(filterField, new BasicDBObject("$gte", sDate.getTime()).append("$lt", eDate.getTime()) );
		}
		DBCollection dbCol = dbColls.get(collection);
		MapReduceCommand cmd = new MapReduceCommand(dbCol, map, reduce, null, MapReduceCommand.OutputType.INLINE, query);
		return runMapReduceCommand(qid, dbCol, cmd);
	}
	
	private StatsPair groupedAggregation(int qid, String collection, String filterField, GregorianCalendar sDate, GregorianCalendar eDate){
		String map ="function() { emit (this.user.screen_name, this.message_text.length); }";	
		String reduce = "function(key, values) { return Array.avg( values ) }";
		BasicDBObject query = new BasicDBObject(filterField, new BasicDBObject("$gte", sDate.getTime()).append("$lt", eDate.getTime()) );
		DBCollection dbCol = dbColls.get(collection);
		MapReduceCommand cmd = new MapReduceCommand(dbCol, map, reduce, null, MapReduceCommand.OutputType.INLINE, query);
		return runMapReduceCommand(qid, dbCol, cmd);
	}
	
	private StatsPair topK(int qid, int topCount, String collection, String filterField, GregorianCalendar sDate, GregorianCalendar eDate, boolean isFull){
		StatsPair stats = new StatsPair();
		String map ="function() { emit (this.user.screen_name, this.message_text.length); }";	
		String reduce = "function(key, values) { return Array.avg( values ) }";
		BasicDBObject query = null;
		if(!isFull){
			query = new BasicDBObject(filterField, new BasicDBObject("$gte", sDate.getTime()).append("$lt", eDate.getTime()) );
		}
		DBCollection dbCol = dbColls.get(collection);
		MapReduceCommand cmd = new MapReduceCommand(dbCol, map, reduce, "mr_output", MapReduceCommand.OutputType.REPLACE, query);
		long s = System.currentTimeMillis();
		dbCol.mapReduce(cmd);
		DBCollection outCol = db.getCollection("mr_output");
			//we iterate here, as inline output can not be sorted (we use "replace" here)
		DBCursor cursor = outCol.find().sort(new BasicDBObject("value",-1)).limit(10);
		int rs = 0;
		if(cursor != null){
			while(cursor.hasNext()){
				cursor.next();
				rs++;
			}
		}
		else{
			System.err.println("Query "+qid+" returned null");
			return stats;
		}
		long e = System.currentTimeMillis();
		long rspTime = (e-s);
		if(resPw != null){
			resPw.println(qid);
			resPw.println("Size of Mapreduce results:\t"+rs);
		}
		stats.setTime(rspTime);
		stats.setSize(rs);
		return stats;
	}
	
	private StatsPair spatialSelection(int qid, String collection, double centerX, double centerY, double radius){
		BasicDBList geoCoord = new BasicDBList();
		geoCoord.add(centerX);
		geoCoord.add(centerY);
		BasicDBList geoParams = new BasicDBList();
		geoParams.add(geoCoord);
		geoParams.add(radius);
		BasicDBObject query = new BasicDBObject(TWM_SPATIAL_ATT, new BasicDBObject("$geoWithin", new BasicDBObject("$center", geoParams) ) );

		BasicDBObject prjFields = new BasicDBObject();
		prjFields.put("_id", 0);
		prjFields.put("user.screen_name",1);
		prjFields.put("message_text",1);
		
		return runBasicDBObjectQuery(qid, collection, query, prjFields, immortal);
	}

	//used for running queries that consists of a BasicDBObject
	private StatsPair runBasicDBObjectQuery(int qid, String collection, BasicDBObject query, BasicDBObject prjFields, boolean immortal){
		StatsPair stats = new StatsPair();
		DBCollection dbCol = dbColls.get(collection);
		if(dbCol == null){
			System.err.println("Collection "+collection+" could not be found");
			return stats;
		}
		DBCursor cursor = null;
		long s = System.currentTimeMillis();
		if(prjFields != null){
			cursor = dbCol.find(query, prjFields);
		}
		else{	//no projection, retrieve all fields
			cursor = dbCol.find(query);
		}
		if(immortal){
			cursor.setOptions(Bytes.QUERYOPTION_NOTIMEOUT);
			System.out.println("\tImmortal Cursor for Q"+qid);
		}
		int rs = 0;
		if(cursor != null){
			while(cursor.hasNext()){
				cursor.next();
				rs++;
				
				if((rs % 5000 == 0) || (rs == 100)){
					long t = System.currentTimeMillis();
					System.out.println("\t"+rs+" records retrieved from cursor for Q"+qid+" in "+(t-s)+" ms");
				}
			}
		}
		else{
			System.err.println("Query "+qid+" returned null cursor"+(query.toString()));
			return stats;
		}
		long e = System.currentTimeMillis();
		long rspTime = (e-s);
		if(resPw != null){
			resPw.println(qid);
			resPw.println(query.toString()+"\n");
		}
		cursor.close();
		System.out.println("\tCursor closed successfully");
		stats.setTime(rspTime);
		stats.setSize(rs);
		return stats;
	}
	
	private StatsPair runMapReduceCommand(int qid, DBCollection dbCol, MapReduceCommand cmd){
		StatsPair stats = new StatsPair();
		long s = System.currentTimeMillis();
		int rs = 0;
		MapReduceOutput output = dbCol.mapReduce(cmd);
		Iterator<DBObject> it = output.results().iterator();
		if(it != null){
			while(it.hasNext()){
				rs++;
				DBObject obj = it.next();
			}
		}
		else{	//query returned null
			System.err.println("Query "+qid+" returned null");
			return stats;
		}
		long e = System.currentTimeMillis();
		long rspTime = (e-s);
		if(resPw != null){
			resPw.println(qid);
			resPw.println("Size of Mapreduce results:\t"+rs);
			resPw.println(output.toString());
		}
		stats.setTime(rspTime);
		stats.setSize(rs);
		return stats;
	}
	
	private StatsPair spatialJoin(int qid, String coll, String filterAtt, String joinAtt, GregorianCalendar sDate, GregorianCalendar eDate, double radius, boolean immortal){
		StatsPair stats = new StatsPair();
		ObjectMapper objectMapper = new ObjectMapper();
		List<String> finalResults = new LinkedList<String>();
		DBCollection dbColTwm = dbColls.get(coll);
		int rs = 0;
		
		BasicDBObject timeFilter = new BasicDBObject(filterAtt, new BasicDBObject("$gte", sDate.getTime()).append("$lt", eDate.getTime()) );
		long startTime = System.currentTimeMillis();
		DBCursor oCursor = dbColTwm.find(timeFilter);
		if(immortal){
			oCursor.setOptions(Bytes.QUERYOPTION_NOTIMEOUT);
			System.out.println("\tImmortal Cursor for outer cursor in Q"+qid);
		}
		if(oCursor != null){
			while(oCursor.hasNext()){
				DBObject nextTweet = oCursor.next();
				long id = Long.parseLong(nextTweet.get("_id").toString());
				double x = ((BasicDBObject) nextTweet.get(joinAtt)).getDouble("x");
				double y = ((BasicDBObject) nextTweet.get(joinAtt)).getDouble("y");
				
				//System.out.println("Checking ID "+id);
				
				BasicDBObject myCmd = new BasicDBObject(); 
				myCmd.append("geoNear", coll); 
				double coord[] = new double[] { x, y }; 
				myCmd.append("near", coord); 
				myCmd.append("maxDistance", radius );
				myCmd.append("num", 10);
				CommandResult r = db.command(myCmd);
				
				ArrayList<String> nearTweets = new ArrayList<String>();
				Iterator keysIt = ((BasicDBList) r.get("results")).iterator();
				while(keysIt.hasNext()){
					BasicDBObject nextObj = (BasicDBObject) keysIt.next();
					BasicDBObject nextNeighbor = (BasicDBObject) nextObj.get("obj");
					long nid = Long.parseLong(nextNeighbor.get("_id").toString());
					if(nid == id){
						continue;
					}
					String nextMsg = nextNeighbor.getString("message_text");
					nearTweets.add(nextMsg);
				}
				
				HashMap<String, Object> result = new HashMap<String, Object>();
				result.put("Tweet", id);
				result.put("nearby_tweets", nearTweets);
				try {
					finalResults.add( objectMapper.writeValueAsString(result) );
					rs++;
					if(rs % 20000 == 0){
						finalResults.clear();
					}
				} catch (JsonProcessingException e) {
					System.err.println("Problem is creating final results of Spatial Join");
					e.printStackTrace();
				}
			}
			oCursor.close();
		}
		long endTime = System.currentTimeMillis();
		long duration = endTime - startTime;
		stats.setTime(duration);
		stats.setSize(rs);
		
		finalResults.clear();
		finalResults = null;
		return stats;
	}
	
	private StatsPair keywordSearch(int qid, String coll, String orderAtt, String msgAtt, String keyword, boolean immortal){
		StatsPair stats = new StatsPair();
		DBCollection dbColTwm = dbColls.get(coll);
		BasicDBObject search = new BasicDBObject("$search", keyword);
		BasicDBObject textSearch = new BasicDBObject("$text", search);
		
		BasicDBObject prjFields = new BasicDBObject();
		prjFields.put("_id", 0);
		prjFields.put(orderAtt, 1);
		prjFields.put(msgAtt, 1);
			
		long s = System.currentTimeMillis();
		DBCursor cursor = dbColTwm.find(textSearch, prjFields).sort(new BasicDBObject(orderAtt,-1)).limit(10);
		if(immortal){
			cursor.setOptions(Bytes.QUERYOPTION_NOTIMEOUT);
			System.out.println("\tImmortal Cursor for Q"+qid);
		}
		int rs = 0;
		if(cursor != null){
			while(cursor.hasNext()){
				DBObject obj = cursor.next();
				rs++;
			}
		}
		else{
			System.err.println("Query "+qid+" returned null cursor "+(textSearch.toString()));
			return stats;
		}
		long e = System.currentTimeMillis();
		long rspTime = (e-s);
		if(resPw != null){
			resPw.println(qid);
			resPw.println(textSearch.toString()+"\n**We also have sort and limit for this query**");
		}
		cursor.close();
		stats.setTime(rspTime);
		stats.setSize(rs);
		return stats;

	}
}

interface IArgument {
	
	public String dump();
}

class DateTimeArgument implements IArgument {
	
	public static final String ARG_DATETIME_DUMP_DELIM = "-";

	public int year;
	public int month;
	public int day;

	public int hour;
	public int min;
	public int sec;

	public DateTimeArgument(int year, int month, int day, int hour, int min, int sec) {
		this.year = year;
		this.month = month;
		this.day = day;
		this.hour = hour;
		this.min = min;
		this.sec = sec;
	}
	
	public DateTimeArgument(Calendar c){
		this.year = c.get(Calendar.YEAR);
		this.month = c.get(Calendar.MONTH)+1;
		this.day = c.get(Calendar.DAY_OF_MONTH);
		this.hour = c.get(Calendar.HOUR_OF_DAY);
		this.min = c.get(Calendar.MINUTE);
		this.sec = c.get(Calendar.SECOND);
	}

	@Override
	public String dump() {
		StringBuilder sb = new StringBuilder(year+"");

		String mo = (month<10) ? ("0"+month) : (""+month);
		String d = (day<10) ? ("0"+day) : (""+day);
		String h = (hour<10) ? ("0"+hour) : (""+hour);
		String mi = (min<10) ? ("0"+min) : (""+min);
		String s = (sec<10) ? ("0"+sec) : (""+sec);

		sb.append(ARG_DATETIME_DUMP_DELIM).append(mo);
		sb.append(ARG_DATETIME_DUMP_DELIM).append(d);
		sb.append(ARG_DATETIME_DUMP_DELIM).append(h);
		sb.append(ARG_DATETIME_DUMP_DELIM).append(mi);
		sb.append(ARG_DATETIME_DUMP_DELIM).append(s);

		return sb.toString();
	}
	
	public GregorianCalendar getGCalendar(){
		return new GregorianCalendar(year, (month-1), day, hour, min, sec);
	}
	
	public Timestamp getAsTimestamp(){	
		return new Timestamp( convertToMillis() );
	}
	
	public Date getAsDate(){
		return new Date(convertToMillis());
	}
	
	public long convertToMillis(){
		Calendar c =  getGCalendar();
		return c.getTimeInMillis();
	}
	
	public void rest(int year, int month, int day, int hour, int min, int sec){
		this.year = year;
		this.month = month;
		this.day = day;
		this.hour = hour;
		this.min = min;
		this.sec = sec;
	}
}

class LongArgument implements IArgument{
	
	private long value;
	
	public LongArgument(long v){
		this.value = v;
	}
	
	@Override
	public String dump() {
		return value+"";
	}
	
	public long getValue(){
		return value;
	}
}

class DoubleArgument implements IArgument{
	
	private double value;
	
	public DoubleArgument(double v){
		this.value = v;
	}
	
	@Override
	public String dump() {
		return value+"";
	}
		
	public double getValue(){
		return value;
	}
}

class StringArgument implements IArgument{
	
	private String value;
	
	public StringArgument(String s){
		this.value = s;
	}
	
	@Override
	public String dump() {
		return "\""+value+"\"";
	}
	
	public String getValue(){
		return value;
	}
}

class StatsPair{
	public static final int INVALID_RS = -1;
	public static final long INVALID_TIME = -1;
	
	private long time;
	private int size;

	public StatsPair(){
		time = INVALID_TIME;
		size = INVALID_RS;
	}

	public void setTime(long t){
		time = t;
	}

	public void setSize(int s){
		size = s;
	}

	public long getTime(){
		return time;
	}

	public int getSize(){
		return size;
	}
	
	public String print(){
		return "Time:\t"+getTime()+"\nSize:\t"+getSize();
	}
}