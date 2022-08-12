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
package asterixReadOnlyClient;

import java.io.StringWriter;
import java.lang.reflect.Parameter;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.logging.Level;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.methods.RequestBuilder;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.impl.client.StandardHttpRequestRetryHandler;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;
import org.apache.commons.io.IOUtils;
import client.AbstractReadOnlyClientUtility;
import config.Constants;

public class AsterixReadOnlyClientUtility extends AbstractReadOnlyClientUtility {

    String ccUrl;
    int port;
    String user;
    String password;
    DefaultHttpClient httpclient;
    HttpGet httpGet;
    URIBuilder roBuilder;

    public AsterixReadOnlyClientUtility(String cc, int port, String user,
            String password, String qIxFile,
            String qGenConfigFile, String statsFile, int ignore,
            String qSeqFile, String resultsFile) {
        super(qIxFile, qGenConfigFile, statsFile, ignore, qSeqFile, resultsFile);
        this.ccUrl = cc;
        this.port = port;
        this.user = user;
        this.password = password;
    }

    @Override
    public void init() {
        httpclient = new DefaultHttpClient();
        httpGet = new HttpGet();
        try {
            roBuilder = new URIBuilder("http://" + ccUrl + ":" + port+
                    "/query/service");
        } catch (URISyntaxException e) {
            System.err.println("Problem in initializing Read-Only URI Builder");
            e.printStackTrace();
        }
    }

    @Override
    public void terminate() {
        if (resPw != null) {
            resPw.close();
        }
        httpclient.getConnectionManager().shutdown();
    }

    @Override
    public void executeQuery(int qid, int vid, Object qBody) {
        long rspTime = Constants.INVALID_TIME;
        String result = "";
        try {
            roBuilder.setParameter("query", (String) qBody);
            URI uri = roBuilder.build();
            httpGet.setURI(uri);

            long s = System.currentTimeMillis();

            RequestBuilder builder = RequestBuilder.post(uri);
            CredentialsProvider credentialsProvider = new BasicCredentialsProvider();
            if (user != null && password != null) {
                credentialsProvider
                        .setCredentials(new AuthScope(uri.getHost(), port),
                                new UsernamePasswordCredentials(user,
                                        password));
            }
            ObjectMapper om = new ObjectMapper();
            ObjectNode content = om.createObjectNode();
                content.put("statement", (String) qBody);
                content.put("timeout","20m");
            try {
                builder.setEntity(
                        new StringEntity(om.writeValueAsString(content),
                                ContentType.APPLICATION_JSON));
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
            builder.setCharset(StandardCharsets.UTF_8);
            HttpUriRequest method = builder.build();
            // Set accepted output response type
            method.setHeader("Accept", "application/json");
            HttpResponse response = executeHttpRequest(method,
                    credentialsProvider);
            // StringWriter resultWriter = new StringWriter();
            // IOUtils.copy(response.getEntity().getContent(),resultWriter,StandardCharsets
            //         .UTF_8);
            // result = resultWriter.toString();
            long e = System.currentTimeMillis();

            rspTime = (e - s);

        } catch (Exception ex) {
            System.err.println("Problem in read-only query execution against Asterix");
            ex.printStackTrace();
            updateStat(qid, vid, Constants.INVALID_TIME);
            return;
        }
        updateStat(qid, vid, rspTime);
        if (resPw != null) {
            resPw.println(qid);
            resPw.println("Ver " + vid);
            resPw.println(qBody + "\n");
            if (dumpResults) {
                resPw.println(result);
            }
        }
        System.out.println("Q" + qid + " version " + vid + "\t" + rspTime); //trace the progress

    }

    protected HttpResponse executeHttpRequest(HttpUriRequest method,
            CredentialsProvider credentialsProvider)
            throws Exception {
        ExecutorService executor = Executors.newSingleThreadExecutor();
        CloseableHttpClient client = HttpClients.custom()
                .setRetryHandler(StandardHttpRequestRetryHandler.INSTANCE)
                .setDefaultCredentialsProvider(credentialsProvider).build();
        Future<HttpResponse> future = executor.submit(() -> {
            try {
                return client.execute(method, (HttpContext) null);
            } catch (Exception e) {
                throw e;
            }
        });
        try {
            return future.get();
        } catch (Exception e) {
            client.close();
            throw e;
        } finally {
            executor.shutdownNow();
        }
    }
}
