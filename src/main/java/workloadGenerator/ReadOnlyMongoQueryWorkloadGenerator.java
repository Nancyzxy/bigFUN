package workloadGenerator;

import com.mongodb.BasicDBObject;
import config.RandomQueryGeneratorConfig;
import datatype.DateTimeArgument;
import datatype.IArgument;
import queryGenerator.RandomQueryParameterGenerator;
import structure.MongoQuery;
import structure.Query;

import java.io.IOException;
import java.util.Arrays;
import java.util.GregorianCalendar;
import java.util.List;

public class ReadOnlyMongoQueryWorkloadGenerator
        extends AbstractReadOnlyStringQueryGenerator {

    public ReadOnlyMongoQueryWorkloadGenerator(String

            qGenConfigFile, long seed, long maxUsrId) {
        this.rqGen = new RandomQueryParameterGenerator(seed, maxUsrId);

        try {
            RandomQueryGeneratorConfig.configure(rqGen, qGenConfigFile);
        } catch (IOException e) {
            System.err.println(
                    "Error in configuring RandomQueryParameterGenerator");
            e.printStackTrace();
        }

    }

    @Override protected Query getQuery(int qid, List<IArgument> args) {
        MongoQuery q = new MongoQuery();

        List<DateTimeArgument> dateArgs = (List<DateTimeArgument>) (List<?>)
                args;

        switch (qid) {

            case 103:
                q.setQuery(Arrays.asList(
                        scanTemporalRange(dateArgs.get(0), dateArgs.get(1))),
                        false);
                break;

            case 104:
                q.setQuery(Arrays.asList(
                        eQuantification(dateArgs.get(0), dateArgs.get(1))),
                        false);
                break;

            case 108:
                q.setQuery(groupedAggregation(dateArgs.get(0), dateArgs.get(1)),
                        true);
                break;

            case 1014:
                q.setQuery(JoinGroupBy(dateArgs.get(0), dateArgs.get(1),
                        dateArgs.get(2), dateArgs.get(3)), true);
                break;
            case 1015:
                q.setQuery(
                        JoinGroupBySortLimit(dateArgs.get(0), dateArgs.get(1),
                                dateArgs.get(2), dateArgs.get(3)), true);
                break;

            default:
                System.err.println("Unknown qid for mongodb " + qid);
        }
        return q;
    }

    private BasicDBObject scanTemporalRange(DateTimeArgument sDate,
            DateTimeArgument eDate) {
        BasicDBObject query = new BasicDBObject("user_since",
                new BasicDBObject("$gte",
                        new BasicDBObject("user_since", sDate.toJSON())
                                .append("$lt", eDate.toJSON())));

        return query;
    }

    private BasicDBObject eQuantification(DateTimeArgument sDate,
            DateTimeArgument eDate) {
        BasicDBObject filter = new BasicDBObject("user_since",
                new BasicDBObject("$gte", sDate.toJSON())
                        .append("$lt", eDate.toJSON()));

        BasicDBObject exists = new BasicDBObject("$exists", false);
        BasicDBObject end = new BasicDBObject("end_date", exists);
        BasicDBObject elemMatch = new BasicDBObject("$elemMatch", end);

        BasicDBObject query = filter.append("employment", elemMatch);

        BasicDBObject prjFields = new BasicDBObject();
        prjFields.put("_id", 0);
        prjFields.put("name", 1);
        prjFields.put("employment", 1);
        return query.append("$project", prjFields);

    }

    private List<BasicDBObject> groupedAggregation(DateTimeArgument sDate,
            DateTimeArgument eDate) {
        List<BasicDBObject> query = Arrays.asList(new BasicDBObject("$group",
                        new BasicDBObject("_id", "$chirpid").append("avg",
                                new BasicDBObject("$avg", new BasicDBObject("$strLenCP",
                                        "$message_text")))),

                new BasicDBObject("$sort", new BasicDBObject("avg", -1)),
                new BasicDBObject("$limit", 10), new BasicDBObject("$project",
                        new BasicDBObject("_id", 0).append("uid", "$_id")
                                .append("avg", 1))

        );

        return query;

    }

    private List<BasicDBObject> JoinGroupBySortLimit(DateTimeArgument m1,
            DateTimeArgument m2, DateTimeArgument u1, DateTimeArgument u2) {

        List<BasicDBObject> query = Arrays.asList(new BasicDBObject("$lookup",
                        new BasicDBObject("from", "gleam_users").append("let",
                                new BasicDBObject("send_time", "$send_time")
                                        .append("author_id", "$author_id"))
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
                                                                                        "$user_since",
                                                                                        u1.toJSON())),
                                                                        new BasicDBObject(
                                                                                "$lt",
                                                                                Arrays.asList(
                                                                                        "$user_since",
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

                                                                ))))))
                                .append("as", "user")),

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

        return query;
    }

    private List<BasicDBObject> JoinGroupBy(DateTimeArgument m1,
            DateTimeArgument m2, DateTimeArgument u1, DateTimeArgument u2) {

        List<BasicDBObject> query = Arrays.asList(new BasicDBObject("$lookup",
                        new BasicDBObject("from", "gleam_users").append("let",
                                new BasicDBObject("send_time", "$send_time")
                                        .append("author_id", "$author_id"))
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
                                                                                        "$user_since",
                                                                                        u1.toJSON())),
                                                                        new BasicDBObject(
                                                                                "$lt",
                                                                                Arrays.asList(
                                                                                        "$user_since",
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

                                                                ))))))
                                .append("as", "user")),

                new BasicDBObject("$match", new BasicDBObject("user",
                        new BasicDBObject("$ne",
                                Arrays.asList(new BasicDBObject())))),
                new BasicDBObject("$group", new BasicDBObject("_id", "$user.id")
                        .append("count", new BasicDBObject("$sum", 1))),
                new BasicDBObject("$unwind", "$_id"),
                new BasicDBObject("$project",
                        new BasicDBObject("_id", 0).append("uid", "$_id")
                                .append("count", 1)));

        return query;
    }
}
