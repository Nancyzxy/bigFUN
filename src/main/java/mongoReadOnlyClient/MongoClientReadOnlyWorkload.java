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
package mongoReadOnlyClient;

import client.AbstractReadOnlyClient;
import structure.MongoQuery;
import structure.Pair;
import structure.TextualQuery;
import workloadGenerator.ReadOnlyMongoQueryWorkloadGenerator;
import workloadGenerator.ReadOnlyTextQueryWorkloadGenerator;

import java.util.List;

public class MongoClientReadOnlyWorkload extends AbstractReadOnlyClient {

    final String host;
    int port;
    String user;
    String password;
    final String collName;
    final int iterations;

    ReadOnlyMongoQueryWorkloadGenerator rwg;

    public MongoClientReadOnlyWorkload(String host, int port, String user,
            String password, String collName, int iter, String qGenConfigFile,
             String statsFile, int ignore, String qSeqFile,
            String resDumpFile, long seed, long maxUsrId) {
        super();
        this.host = host;
        this.port = port;
        this.user = user;
        this.password = password;
        this.collName = collName;
        this.iterations = iter;
        setClientUtil(null, qGenConfigFile, statsFile, ignore, qSeqFile,
                resDumpFile);
        clUtil.init();
        initReadOnlyWorkloadGen(seed, maxUsrId);
        execQuery = true;
    }

    @Override protected void initReadOnlyWorkloadGen(long seed, long maxUsrId) {
        this.rwg = new ReadOnlyMongoQueryWorkloadGenerator(
                clUtil.getQGenConfigFile(), seed, maxUsrId);
    }

    @Override public void execute() {
        long iteration_start = 0l;
        long iteration_end = 0l;

        for (int i = 0; i < iterations; i++) {
            System.out.println(
                    "\nMongoDB Client - Read-Only Workload - Starting "
                            + "Iteration "
                            + i);
            iteration_start = System.currentTimeMillis();
            for (Pair qvPair : clUtil.qvids) {
                int qid = qvPair.getQId();
                int vid = qvPair.getVId();
                MongoQuery q = (MongoQuery) rwg.nextQuery(qid, vid);
                if (q == null) {
                    continue; //do not break, if one query is not found
                }
                if (execQuery) {
                    clUtil.executeQuery(qid, vid, q);
                }
            }
            iteration_end = System.currentTimeMillis();
            System.out.println(
                    "Total time for iteration " + i + " :\t" + (iteration_end
                            - iteration_start) + " ms\n");
        }
        clUtil.terminate();
    }

    @Override public void setClientUtil(String qIxFile, String qGenConfigFile,
            String statsFile, int ignore, String qSeqFile, String resultsFile) {
        clUtil = new MongoDbReadOnlyClientUtility(host, port, user, password,
                qGenConfigFile, statsFile, ignore, qSeqFile,
                resultsFile);
    }
}
