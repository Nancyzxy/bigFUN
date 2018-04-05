package structure;

import com.mongodb.BasicDBObject;
import datatype.IArgument;

import java.util.List;

public class MongoQuery implements Query{
    List<BasicDBObject> query;
    boolean aggregation;
    List<IArgument> args;

    @Override public void setArgs(List<IArgument> args) {

    }

    @Override public List<IArgument> getArgs() {
        return null;
    }

    public void setQuery(List<BasicDBObject> query, boolean aggregation){
        this.query = query;
        this.aggregation = aggregation;
    }

    public List<BasicDBObject> getQuery() {
        return query;
    }

    public boolean isAggregation() {
        return aggregation;
    }
}
