package mongoReadOnlyClient;

import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Random;

import client.AbstractClient;
import client.AbstractClientUtility;
import com.mongodb.AggregationOptions;
import com.mongodb.BasicDBObject;
import com.mongodb.Cursor;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import datatype.DateTimeArgument;
import datatype.IArgument;
import structure.MongoQuery;

public class MongoDbReadOnlyClientUtility extends AbstractClientUtility {

	public static final String FBU_COLL_NAME = "gleam_users";
	public static final String FBM_COLL_NAME = "gleam_messages";
	public static final String TWM_COLL_NAME = "chirp_messages";
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
	Random rand;
	String host;
	int port;
	String user;
	String password;
	String qGenConfigFile;

	public MongoDbReadOnlyClientUtility(String host, int port, String user,
			String password, String qGenConfigFile, String statsFile,
			int ignore, String qSeqFile, String resultsFile) {
		super(statsFile, resultsFile, ignore);
		this.host = host;
		this.port = port;
		this.user = user;
		this.password = password;
		this.qGenConfigFile = qGenConfigFile;

	}

	//range scan on a temporal attribute

	//used for running queries that consists of a BasicDBObject
	private StatsPair runBasicDBObjectQuery(int qid, String collection,
			BasicDBObject query, List<BasicDBObject> aggregation,
			BasicDBObject prjFields) {
		StatsPair stats = new StatsPair();
		DBCollection dbCol = db.getCollection(collection);
		if (dbCol == null) {
			System.err.println(
					"Collection " + collection + " could not be found");
			return stats;
		}
		Cursor cursor = null;
		long s = System.currentTimeMillis();
		if (prjFields != null) {
			cursor = dbCol.find(query, prjFields);
		} else if (aggregation == null && query != null) {   //no projection,
			// retrieve all fields
			cursor = dbCol.find(query);
		} else {
			AggregationOptions options = AggregationOptions.builder().build();
			cursor = dbCol.aggregate(aggregation, options);
		}
		int rs = 0;
		if (cursor != null) {
			while (cursor.hasNext()) {
				cursor.next();
				rs++;

				//		if ((rs % 5000 == 0) || (rs == 100)) {
					long t = System.currentTimeMillis();
				System.out.println(
						"\t" + rs + " records retrieved from cursor for Q" + qid
								+ " in " + (t - s) + " ms");
				//		}
			}
		} else {
			System.err.println(
					"TextualQuery " + qid + " returned null cursor" + (query
					.toString()));
			return stats;
		}
		long e = System.currentTimeMillis();
		long rspTime = (e - s);
		if (resPw != null) {
			resPw.println(qid);
			if (query == null) {
				resPw.println(aggregation.toString() + "\n");
			} else {
				resPw.println(query.toString() + "\n");
			}
		}
		resPw.flush();
		cursor.close();
		System.out.println("\tCursor closed successfully");
		stats.setTime(rspTime);
		stats.setSize(rs);
		return stats;
	}

	//	public static void main(String args[]) {
	//		MongoClient mc = new MongoClient("localhost");
	//		DB md = mc.getDB("bigfun");
	//		PrintWriter pw = new PrintWriter(System.out);
	//		pw.flush();
	//		MongoDbReadOnlyClientUtility me = new MongoDbReadOnlyClientUtility(md,
	//				pw);
	//		me.execute();
	//	}

	@Override public void init() {

		this.db = new MongoClient(host, port).getDB("bigfun");

	}

	@Override public void terminate() {

	}

	@Override public void generateReport() {

	}

	@Override public void setDumpResults(boolean b) {

	}

	@Override public String getQGenConfigFile() {
		return qGenConfigFile;
	}

	@Override public void executeQuery(int qid, int vid, Object q) {
		MongoQuery query = (MongoQuery) q;
		if (((MongoQuery) q).isAggregation()) {
			runBasicDBObjectQuery(qid, "gleam_messages", null, query.getQuery(),
					null);
		} else {
			runBasicDBObjectQuery(qid, "gleam_messages",
					query.getQuery().get(0), null, null);
		}

	}

	@Override public String getQIxFile() {
		return null;
	}
}

class StatsPair{
	public static final int INVALID_RS = -1;
	public static final long INVALID_TIME = -1;

	private long time;
	private int size;

	public StatsPair() {
		time = INVALID_TIME;
		size = INVALID_RS;
	}

	public void setTime(long t) {
		time = t;
	}

	public void setSize(int s) {
		size = s;
	}

	public long getTime() {
		return time;
	}

	public int getSize() {
		return size;
	}

	public String print() {
		return "Time:\t" + getTime() + "\nSize:\t" + getSize();
	}
}