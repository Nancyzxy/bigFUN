package structure;

import com.mongodb.BasicDBObject;
import datatype.IArgument;

import java.util.List;

public class MongoQuery implements Query{
    List<BasicDBObject> query;
    boolean aggregation;
    String collection;
    List<IArgument> args;

    @Override public void setArgs(List<IArgument> args) {
        this.args = args;
    }

    @Override public List<IArgument> getArgs() {
        return args;
    }

    public String getCollection(){
        return collection;
    }

    public void setQuery(List<BasicDBObject> query, boolean aggregation,
            String collection){
        this.query = query;
        this.aggregation = aggregation;
        this.collection = collection;
    }

    public List<BasicDBObject> getQuery() {
        return query;
    }

    public boolean isAggregation() {
        return aggregation;
    }
}
