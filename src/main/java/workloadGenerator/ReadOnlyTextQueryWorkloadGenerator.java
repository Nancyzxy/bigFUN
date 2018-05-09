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

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.databind.ObjectMapper;
import config.Constants;
import config.RandomQueryGeneratorConfig;
import datatype.IArgument;
import queryGenerator.RandomQueryParameterGenerator;
import structure.Query;
import structure.TextualQuery;

public class ReadOnlyTextQueryWorkloadGenerator extends
        AbstractReadOnlyStringQueryGenerator {

    HashMap<Integer, Query> qIxToQuery;

    protected void loadQueryTemplate(String qIndexFile) throws IOException {
        qIxToQuery.clear();
        Map<String, String> qIxToPath;
        ObjectMapper mapper = new ObjectMapper();
        qIxToPath = mapper.readValue(new File(qIndexFile), Map.class);
        for (String id : qIxToPath.keySet()) {
            int qId = Integer.parseInt(id);
            String segFile = (String) qIxToPath.get(id);
            addQuery(segFile, qId);
        }
    }

    private void addQuery(String segmentsFile, int ix) throws IOException {
        if (qIxToQuery.containsKey(ix)) {
            System.err.println("ERROR - TextualQuery Already Exists for Index " + ix);
            return;
        }

        BufferedReader in = new BufferedReader(new FileReader(segmentsFile));
        ArrayList<String> segments = new ArrayList<String>();
        String str;
        String thisSeg = "";
        while ((str = in.readLine()) != null) {
            if (str.trim().equals(Constants.ARG_TAG_IN_Q_TEMPLATE_FILE)) {
                segments.add(thisSeg);
                thisSeg = "";
            } else {
                thisSeg += str + "\n";
            }
        }
        in.close();
        if (thisSeg.length() > 0) {
            segments.add(thisSeg);
        }
        qIxToQuery.put(ix, new TextualQuery(segments));
    }

    public ReadOnlyTextQueryWorkloadGenerator(String qIndexFile, String
            qGenConfigFile, long seed, long maxUsrId ) {
        super();
        qIxToQuery = new HashMap<>();
        try {
            loadQueryTemplate(qIndexFile);
        } catch (IOException e) {
            System.err.println("Error in loading qIndexFile in RandomWorkloadGenerator");
            e.printStackTrace();
        }
        rqGen = new RandomQueryParameterGenerator(seed, maxUsrId);
        try {
            RandomQueryGeneratorConfig.configure(rqGen, qGenConfigFile);
        } catch (IOException e) {
            System.err.println("Error in configuring RandomQueryParameterGenerator");
            e.printStackTrace();
        }
    }

    @Override
    protected Query getQuery(int qid, List<IArgument> args) {
        Query q = qIxToQuery.get(qid);
        q.setArgs(args);
        return  q;
    }

}
