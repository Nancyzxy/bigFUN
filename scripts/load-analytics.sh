#!/bin/bash

CBIMPORT_PATH=$1
DATA_PATH=$2
HOST=$(cat ../conf/bigfun-conf.json | python3 -c "import sys, json; print(json
.load(sys.stdin)['cc'])")
USER=couchbase
PASS=couchbase
BUCKET=bigFUN

echo -e "BigFUN Couchbase Analytics loader"
echo -e "Deleting existing shadow datasets before loading"

curl -s -u $USER:$PASS -d "DISCONNECT BUCKET $BUCKET IF CONNECTED;" http://$HOST:8095/query/service > /dev/null

curl -s -u $USER:$PASS -d "DROP DATASET GleambookUsers IF EXISTS;" http://$HOST:8095/query/service > /dev/null
curl -s -u $USER:$PASS -d "DROP DATASET GleambookMessages IF EXISTS;" http://$HOST:8095/query/service  > /dev/null
curl -s -u $USER:$PASS -d "DROP DATASET ChirpMessages IF EXISTS;" http://$HOST:8095/query/service > /dev/null

curl -s -u $USER:$PASS -d "DROP BUCKET $BUCKET IF EXISTS;" http://$HOST:8095/query/service > /dev/null

echo -e "Deleting existing KV bucket"

curl -s -X DELETE -u $USER:$PASS http://$HOST:9000/pools/default/buckets/$BUCKET > /dev/null

echo -e "Creating new KV bucket"

curl -s -X POST -u $USER:$PASS -d "name=$BUCKET" -d 'ramQuotaMB=256'0 -d 'authType=none' http://$HOST:9000/pools/default/buckets

sleep 10

echo -e "Creating shadow datasets and indexes"

curl -s -u $USER:$PASS -d "CREATE BUCKET $BUCKET;" http://$HOST:8095/query/service > /dev/null
curl -s -u $USER:$PASS -d "CREATE SHADOW DATASET GleambookUsers on \`$BUCKET\` WHERE \`id\` IS NOT UNKNOWN;" http://$HOST:8095/query/service > /dev/null
curl -s -u $USER:$PASS -d "CREATE SHADOW DATASET GleambookMessages on \`$BUCKET\` WHERE \`message_id\` IS NOT UNKNOWN;" http://$HOST:8095/query/service > /dev/null
curl -s -u $USER:$PASS -d "CREATE SHADOW DATASET ChirpMessages on \`$BUCKET\` WHERE \`chirpid\` IS NOT UNKNOWN;" http://$HOST:8095/query/service > /dev/null


curl -s -u $USER:$PASS -d "CREATE INDEX usrSinceIdx ON \`GleambookUsers\`(user_since: string); CREATE INDEX authorIdIdx ON \`GleambookMessages\`(author_id: string); CREATE INDEX sndTimeIdx  ON \`ChirpMessages\`(send_time: string)" http://$HOST:8095/query/service > /dev/null

echo -e "Connecting KV bucket $BUCKET to Analytics shadow"
curl -s -u $USER:$PASS -d "CONNECT BUCKET $BUCKET" http://$HOST:8095/query/service > /dev/null

