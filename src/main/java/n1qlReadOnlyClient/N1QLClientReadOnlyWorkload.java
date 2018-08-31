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
package n1qlReadOnlyClient;

import client.AbstractReadOnlyClient;
import structure.Pair;
import structure.TextualQuery;
import workloadGenerator.ReadOnlyTextQueryWorkloadGenerator;

public class N1QLClientReadOnlyWorkload extends AbstractReadOnlyClient {

    final String ccUrl;
    int port;
    String user;
    String password;
    final int iterations;
    ReadOnlyTextQueryWorkloadGenerator rwg;

    public N1QLClientReadOnlyWorkload(String cc, int port, String user, String password, int iter,
            String qGenConfigFile, String qIxFile, String statsFile, int ignore, String qSeqFile, String resDumpFile,
            long seed, long maxUsrId) {
        super();
        this.ccUrl = cc;
        this.port = port;
        this.user = user;
        this.password = password;
        this.iterations = iter;
        setClientUtil(qIxFile, qGenConfigFile, statsFile, ignore, qSeqFile, resDumpFile);
        clUtil.init();
        initReadOnlyWorkloadGen(seed, maxUsrId);
        execQuery = true;
    }

    @Override protected void initReadOnlyWorkloadGen(long seed, long maxUsrId) {
        this.rwg = new ReadOnlyTextQueryWorkloadGenerator(clUtil.getQIxFile(), clUtil.getQGenConfigFile(), seed,
                maxUsrId);
    }

    @Override public void execute() {
        long iteration_start = 0l;
        long iteration_end = 0l;

        for (int i = 0; i < iterations; i++) {
            System.out.println("\nN1QL Client - Read-Only Workload - Starting Iteration " + i);
            iteration_start = System.currentTimeMillis();
            for (Pair qvPair : clUtil.qvids) {
                int qid = qvPair.getQId();
                int vid = qvPair.getVId();
                TextualQuery q = (TextualQuery) rwg.nextQuery(qid, vid);
                if (q == null) {
                    continue; //do not break, if one query is not found
                }
                if (execQuery) {
                    clUtil.executeQuery(qid, vid, q.sqlppPrint(null));
                }
            }
            iteration_end = System.currentTimeMillis();
            System.out.println("Total time for iteration " + i + " :\t" + (iteration_end - iteration_start) + " ms\n");
        }
        clUtil.terminate();
    }

    @Override public void setClientUtil(String qIxFile, String qGenConfigFile, String statsFile, int ignore,
            String qSeqFile, String resultsFile) {
        clUtil = new N1QLReadOnlyClientUtility(ccUrl, port, user, password, qIxFile, qGenConfigFile, statsFile, ignore,
                qSeqFile, resultsFile);
    }
}
