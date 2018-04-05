/*
 * Copyright by The Regents of the University of California
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * you may obtain a copy of the License from
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package workloadGenerator;

import java.util.HashMap;
import java.util.List;

import datatype.IArgument;
import queryGenerator.RandomQueryParameterGenerator;
import structure.Query;

public abstract class AbstractReadOnlyStringQueryGenerator {


    RandomQueryParameterGenerator rqGen;

    public Query nextQuery(int qid, int vid) {
        List<IArgument> args = rqGen.nextQuery(qid, vid);
        Query q = getQuery(qid, args);
        if (q == null) {
            System.err.println("TextualQuery " + qid + " can not be found !");
            return null;
        }
        return q;
    }

    protected Query getQuery(int qid, List<IArgument> args){
        return null;
    }

}
