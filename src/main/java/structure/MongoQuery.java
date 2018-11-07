package structure;

import com.mongodb.BasicDBObject;
import datatype.IArgument;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MongoQuery implements Query{
    public enum QueryType{
        FIND,
        AGGREGATE,
        CLIENT_JOIN,
        IDENT
    }
    List<BasicDBObject> query;
    BasicDBObject inner;
    List<BasicDBObject> outer;
    QueryType type;
    String collection;
    String innerColl;
    String outerColl;
    List<String> bTable = new ArrayList<>();
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

    public void setQuery(List<BasicDBObject> query, QueryType type,
            String collection){
        this.query = query;
        this.type = type;
        this.collection = collection;
    }

    public void setQuery(BasicDBObject inner, List<BasicDBObject> outer, String innerCollection, String outerCollection){
        this.inner = inner;
        this.outer = outer;
        innerColl = innerCollection;
        outerColl = outerCollection;
        this.type = QueryType.CLIENT_JOIN;
    }

    public List<BasicDBObject> getQuery() {
        return query;
    }

    public BasicDBObject getInner() {
        return inner;
    }

    public List<BasicDBObject> getOuter() {
        return outer;
    }

    public List<String> getJoinCollections(){return Arrays.asList(innerColl,outerColl);}

    public QueryType getType() { return type;}

    public void setbTable(List<String> newTable){
        bTable.addAll(newTable);
    }

    public List<String> getbTable() {
        return bTable;
    }
}
