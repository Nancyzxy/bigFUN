package structure;

import datatype.IArgument;

import java.util.List;

public interface Query {
    void setArgs(List<IArgument> args);
    List<IArgument> getArgs();
}
