package mongoReadOnlyClient;

import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import client.AbstractClient;
import com.mongodb.AggregationOptions;
import com.mongodb.AggregationOutput;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.Bytes;
import com.mongodb.Cursor;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MapReduceCommand;
import com.mongodb.Mongo;
import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import datatype.DateTimeArgument;
import datatype.IArgument;
import org.apache.http.client.utils.DateUtils;

public class MongoDbQueryExecutor extends AbstractClient {

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
	PrintWriter resPw;
	Random rand;

	public MongoDbQueryExecutor(DB db, PrintWriter resPw) {
		this.db = db;
		this.resPw = resPw;
		rand = new Random(seed);
	}

	public StatsPair executeQuery(int qid, int vid, List<IArgument> args) {
		StatsPair stats = null;
		switch (qid) {

			case 103:
				GregorianCalendar sDate_103 = ((DateTimeArgument) args.get(0))
						.getGCalendar();
				GregorianCalendar eDate_103 = ((DateTimeArgument) args.get(1))
						.getGCalendar();
				stats = scanTemporalRange(qid, FBU_COLL_NAME,
						FBU_TEMPORAL_INDEXED_FILED, sDate_103, eDate_103);
				break;

			case 104:
				GregorianCalendar sDate_104 = ((DateTimeArgument) args.get(0))
						.getGCalendar();
				GregorianCalendar eDate_104 = ((DateTimeArgument) args.get(1))
						.getGCalendar();
				stats = eQuantification(qid, FBU_COLL_NAME,
						FBU_TEMPORAL_INDEXED_FILED, sDate_104, eDate_104);
				break;

			case 108:
				GregorianCalendar sDate_108 = ((DateTimeArgument) args.get(0))
						.getGCalendar();
				GregorianCalendar eDate_108 = ((DateTimeArgument) args.get(1))
						.getGCalendar();
				stats = groupedAggregation(qid, TWM_COLL_NAME,
						FBU_TEMPORAL_INDEXED_FILED, sDate_108, eDate_108);
				break;

			case 1014:

				DateTimeArgument sDate_msg_1014 = ((DateTimeArgument) args
						.get(0));
				DateTimeArgument eDate_msg_1014 = ((DateTimeArgument) args
						.get(1));
				DateTimeArgument sDate_user_1014 = ((DateTimeArgument) args
						.get(2));
				DateTimeArgument eDate_user_1014 = ((DateTimeArgument) args
						.get(3));
				stats = JoinGroupBy(qid, FBM_COLL_NAME, sDate_msg_1014,
						eDate_msg_1014, sDate_user_1014, eDate_user_1014);
				break;
			case 1015:
				DateTimeArgument sDate_msg_1015 = ((DateTimeArgument) args
						.get(0));
				DateTimeArgument eDate_msg_1015 = ((DateTimeArgument) args
						.get(1));
				DateTimeArgument sDate_user_1015 = ((DateTimeArgument) args
						.get(2));
				DateTimeArgument eDate_user_1015 = ((DateTimeArgument) args
						.get(3));
				stats = JoinGroupBySortLimit(qid, FBM_COLL_NAME, sDate_msg_1015,
						eDate_msg_1015, sDate_user_1015, eDate_user_1015);
				break;

			default:
				System.err.println(
						"Unknown qid for mongodb " + qid + " version " + vid);
		}
		if (stats == null) {
			stats = new StatsPair();
		}
		return stats;
	}

	//range scan on a temporal attribute
	private StatsPair scanTemporalRange(int qid, String collection,
			String field, GregorianCalendar sDate, GregorianCalendar eDate) {
		BasicDBObject query = new BasicDBObject(field,
				new BasicDBObject("$gte", sDate.getTime())
						.append("$lt", eDate.getTime()));
		return runBasicDBObjectQuery(qid, collection, query, null, null);
	}

	private StatsPair eQuantification(int qid, String collection,
			String filterField, GregorianCalendar sDate,
			GregorianCalendar eDate) {
		BasicDBObject filter = new BasicDBObject("user_since",
				new BasicDBObject("$gte", sDate.getTime())
						.append("$lt", eDate.getTime()));

		BasicDBObject exists = new BasicDBObject("$exists", false);
		BasicDBObject end = new BasicDBObject("end_date", exists);
		BasicDBObject elemMatch = new BasicDBObject("$elemMatch", end);

		BasicDBObject query = filter.append("employment", elemMatch);

		BasicDBObject prjFields = new BasicDBObject();
		prjFields.put("_id", 0);
		prjFields.put("name", 1);
		prjFields.put("employment", 1);

		return runBasicDBObjectQuery(qid, collection, query, null, prjFields);
	}

	private StatsPair groupedAggregation(int qid, String collection,
			String filterField, GregorianCalendar sDate,
			GregorianCalendar eDate) {
		List<BasicDBObject> query = Arrays.asList(new BasicDBObject("$group",
						new BasicDBObject("_id", "$chirpid").append("avg",
								new BasicDBObject("$avg", new BasicDBObject("$strLenCP",
										"$message_text")))),

				new BasicDBObject("$sort", new BasicDBObject("avg", -1)),
				new BasicDBObject("$limit", 10), new BasicDBObject("$project",
						new BasicDBObject("_id", 0).append("uid", "$_id")
								.append("avg", 1))

		);

		return runBasicDBObjectQuery(qid, collection, null, query, null);
	}

	private StatsPair JoinGroupBySortLimit(int qid, String collection,
			DateTimeArgument m1, DateTimeArgument m2, DateTimeArgument u1,
			DateTimeArgument u2) {

		List<BasicDBObject> query = Arrays.asList(new BasicDBObject("$lookup",
						new BasicDBObject("from", "gleam_users")
								.append("let",
										new BasicDBObject("send_time",
												"$send_time").append
												("author_id", "$author_id"))
								.append("pipeline", Arrays.asList(
										new BasicDBObject("$match",
												new BasicDBObject("$expr",
														new BasicDBObject("$and",
																Arrays.asList(
																		new BasicDBObject(
																				"$eq",
																				Arrays.asList(
																						"$id",
																						"$$author_id")),
																		new BasicDBObject(
																				"$gte",
																				Arrays.asList(
																						"user_since",
																						u1.toJSON())),
																		new BasicDBObject(
																				"$lt",
																				Arrays.asList(
																						"user_since",
																						u2.toJSON())),
																		new BasicDBObject(
																				"$gte",
																				Arrays.asList(
																						"$$send_time",
																						m1.toJSON())),
																		new BasicDBObject(
																				"$lt",
																				Arrays.asList(
																						"$$send_time",
																						m2.toJSON()))

																)))))).append
								("as","user")),

				new BasicDBObject("$match", new BasicDBObject("user",
						new BasicDBObject("$ne",
								Arrays.asList(new BasicDBObject())))),
				new BasicDBObject("$group", new BasicDBObject("_id", "$user.id")
						.append("count", new BasicDBObject("$sum", 1))),
				new BasicDBObject("$unwind", "$_id"),
				new BasicDBObject("$project",
						new BasicDBObject("_id", 0).append("uid", "$_id")
								.append("count", 1)),
				new BasicDBObject("$sort", new BasicDBObject("count", -1)),
				new BasicDBObject("$limit", 10), new BasicDBObject("$project",
						new BasicDBObject("_id", 0).append("uid", "$_id")
								.append("count", 1)));


		return runBasicDBObjectQuery(qid, collection, null, query, null);

	}

	private StatsPair JoinGroupBy(int qid, String collection,
			DateTimeArgument m1, DateTimeArgument m2, DateTimeArgument u1,
			DateTimeArgument u2) {

		StatsPair stats = new StatsPair();

		List<BasicDBObject> query = Arrays.asList(new BasicDBObject("$lookup",
						new BasicDBObject("from", "gleam_users")
								.append("let",
										new BasicDBObject("send_time",
												"send_time").append
												("author_id", "author_id"))
								.append("pipeline", Arrays.asList(
										new BasicDBObject("$match",
												new BasicDBObject("$expr",
														new BasicDBObject("$and",
																Arrays.asList(
																		new BasicDBObject(
																				"$eq",
																				Arrays.asList(
																						"$id",
																						"$$author_id")),
																		new BasicDBObject(
																				"$gte",
																				Arrays.asList(
																						"user.user_since",
																						u1.toJSON())),
																		new BasicDBObject(
																				"$lt",
																				Arrays.asList(
																						"user.user_since",
																						u2.toJSON())),
																		new BasicDBObject(
																				"$gte",
																				Arrays.asList(
																						"$$send_time",
																						m1.toJSON())),
																		new BasicDBObject(
																				"$lt",
																				Arrays.asList(
																						"$$send_time",
																						m2.toJSON()))

																)))))).append
								("as","user")),

				new BasicDBObject("$match", new BasicDBObject("user",
						new BasicDBObject("$ne",
								Arrays.asList(new BasicDBObject())))),
				new BasicDBObject("$group", new BasicDBObject("_id", "$user.id")
						.append("count", new BasicDBObject("$sum", 1))),
				new BasicDBObject("$unwind", "$_id"),
				new BasicDBObject("$project",
						new BasicDBObject("_id", 0).append("uid", "$_id")
								.append("count", 1)));

		return runBasicDBObjectQuery(qid, collection, null, query, null);

	}

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
			System.err.println("Query " + qid + " returned null cursor" + (query
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

	@Override public void execute() {
		Calendar s = javax.xml.bind.DatatypeConverter
				.parseDateTime("2000-05-21T02:10:38");

		Calendar e = javax.xml.bind.DatatypeConverter
				.parseDateTime("2014-01-01T19:03:24");
		StatsPair stats = executeQuery(108, 1,
				Arrays.asList(new DateTimeArgument(s),
						new DateTimeArgument(e)));

		System.out.println(stats.print());

		stats = executeQuery(1014, 1,
				Arrays.asList(new DateTimeArgument(s), new DateTimeArgument(e),
						new DateTimeArgument(s), new DateTimeArgument(e)));

		System.out.println(stats.print());

		stats = executeQuery(1015, 1,
				Arrays.asList(new DateTimeArgument(s), new DateTimeArgument(e),
						new DateTimeArgument(s), new DateTimeArgument(e)));

		System.out.println(stats.print());

	}

	public static void main(String args[]) {
		MongoClient mc = new MongoClient("localhost");
		DB md = mc.getDB("bigfun");
		PrintWriter pw = new PrintWriter(System.out);
		pw.flush();
		MongoDbQueryExecutor me = new MongoDbQueryExecutor(md, pw);
		me.execute();
	}

	@Override public void generateReport() {

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