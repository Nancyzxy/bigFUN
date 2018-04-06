package mongoReadOnlyClient;

import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Random;

import client.AbstractClient;
import client.AbstractClientUtility;
import client.AbstractReadOnlyClientUtility;
import com.mongodb.AggregationOptions;
import com.mongodb.BasicDBObject;
import com.mongodb.Cursor;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import datatype.DateTimeArgument;
import datatype.IArgument;
import structure.MongoQuery;

public class MongoDbReadOnlyClientUtility extends
		AbstractReadOnlyClientUtility {

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
	MongoClient client;
	Random rand;
	String host;
	int port;
	String user;
	String password;
	String qGenConfigFile;

	public MongoDbReadOnlyClientUtility(String host, int port, String user,
			String password, String qGenConfigFile, String statsFile,
			int ignore, String qSeqFile, String resultsFile) {
	    super(null,qGenConfigFile,statsFile,ignore,qSeqFile,resultsFile);
		this.host = host;
		this.port = port;
		this.user = user;
		this.password = password;
		this.qGenConfigFile = qGenConfigFile;

	}

	//range scan on a temporal attribute

	//used for running queries that consists of a BasicDBObject
	private void runBasicDBObjectQuery(int qid, int vid, String collection,
			BasicDBObject query, List<BasicDBObject> aggregation,
			BasicDBObject prjFields) {
		StringBuilder result = new StringBuilder();
		DBCollection dbCol = db.getCollection(collection);
		if (dbCol == null) {
			System.err.println(
					"Collection " + collection + " could not be found");
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
				DBObject row = cursor.next();
				result.append(row.toString());
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
		}
		long e = System.currentTimeMillis();
		long rspTime = (e - s);
		updateStat(qid, vid, rspTime);
		if (resPw != null) {
			resPw.println(qid);
			resPw.println("Ver " + vid);
			resPw.println(query == null ? aggregation.toString() : query.toString() +
					"\n");
			if (dumpResults) {
				resPw.println(result.toString());
				resPw.print('\n');
			}
			resPw.flush();
		}
	}

	@Override public void init() {
		client = new MongoClient(host, port);
		this.db = client.getDB("bigfun");

	}

	@Override public void terminate() {
	    client.close();

	}

	@Override public void setDumpResults(boolean b) {
		this.dumpResults = b;

	}

	@Override public String getQGenConfigFile() {
		return qGenConfigFile;
	}

	@Override public void executeQuery(int qid, int vid, Object q) {
		MongoQuery query = (MongoQuery) q;
		if (((MongoQuery) q).isAggregation()) {
			runBasicDBObjectQuery(qid,vid, ((MongoQuery) q).getCollection(),
					null, query.getQuery(),
					null);
		} else {
			runBasicDBObjectQuery(qid,vid,((MongoQuery) q).getCollection(),
					query.getQuery().get(0), null, null);
		}

	}

	@Override public String getQIxFile() {
		return null;
	}
}

