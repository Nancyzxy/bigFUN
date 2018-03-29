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

curl -s -u $USER:$PASS -d "DISCONNECT BUCKET $BUCKET IF CONNECTED;" http://$HOST:9600/query/service > /dev/null

curl -s -u $USER:$PASS -d "DROP DATASET GleambookUsers IF EXISTS;" http://$HOST:9600/query/service > /dev/null
curl -s -u $USER:$PASS -d "DROP DATASET GleambookMessages IF EXISTS;" http://$HOST:9600/query/service  > /dev/null
curl -s -u $USER:$PASS -d "DROP DATASET ChirpMessages IF EXISTS;" http://$HOST:9600/query/service > /dev/null

curl -s -u $USER:$PASS -d "DROP BUCKET $BUCKET IF EXISTS;" http://$HOST:9600/query/service > /dev/null

echo -e "Deleting existing KV bucket"

curl -s -X DELETE -u $USER:$PASS http://$HOST:9000/pools/default/buckets/$BUCKET > /dev/null

echo -e "Creating new KV bucket"

curl -s -X POST -u $USER:$PASS -d "name=$BUCKET" -d 'ramQuotaMB=256'0 -d 'authType=none' http://$HOST:9000/pools/default/buckets

sleep 10

echo -e "Loading BigFUN data to KV"
#load to kv
$CBIMPORT_PATH/cbimport json -f lines -c $HOST:9000 -u $USER -p $PASS -b $BUCKET -g chirpid::%chirpid% -d file://$DATA_PATH/chirp_messages.json
$CBIMPORT_PATH/cbimport json -f lines -c $HOST:9000 -u $USER -p $PASS -b $BUCKET -g id::%id% -d file://$DATA_PATH/gbook_users.json
$CBIMPORT_PATH/cbimport json -f lines -c $HOST:9000 -u $USER -p $PASS -b $BUCKET -g message_id::%message_id% -d file://$DATA_PATH/gbook_messages.json

COUNT=$(ls $DATA_PATH/*.json | xargs wc -l | grep total | cut -d' ' -f4)
echo -e "Loaded $COUNT rows to KV bucket $BUCKET"
echo -e "Creating shadow datasets and indexes"

curl -s -u $USER:$PASS -d "CREATE BUCKET $BUCKET;" http://$HOST:9600/query/service > /dev/null
curl -s -u $USER:$PASS -d "CREATE SHADOW DATASET GleambookUsers on \`$BUCKET\` WHERE \`id\` IS NOT UNKNOWN;" http://$HOST:9600/query/service > /dev/null
curl -s -u $USER:$PASS -d "CREATE SHADOW DATASET GleambookMessages on \`$BUCKET\` WHERE \`message_id\` IS NOT UNKNOWN;" http://$HOST:9600/query/service > /dev/null
curl -s -u $USER:$PASS -d "CREATE SHADOW DATASET ChirpMessages on \`$BUCKET\` WHERE \`chirpid\` IS NOT UNKNOWN;" http://$HOST:9600/query/service > /dev/null


curl -s -u $USER:$PASS -d "CREATE INDEX usrSinceIdx ON \`GleambookUsers\`(user_since: string); CREATE INDEX authorIdIdx ON \`GleambookMessages\`(author_id: string); CREATE INDEX sndTimeIdx  ON \`ChirpMessages\`(send_time: string)" http://$HOST:9600/query/service > /dev/null

echo -e "Connecting KV bucket $BUCKET to Analytics shadow"
curl -s -u $USER:$PASS -d "CONNECT BUCKET $BUCKET" http://$HOST:9600/query/service > /dev/null

BUCKET_COUNT=0

echo -e "Waiting for Analytics shadow to catch up to KV"
while [ $BUCKET_COUNT -lt $COUNT ]
do
COUNTMSG=$(curl -s -u couchbase:couchbase -d "SELECT COUNT(*) AS count FROM GleambookMessages;" http://localhost:9600/query/service | python3 -c "import sys, json; print(json.load(sys.stdin)['results'][0]['count'])")
COUNTUSER=$(curl -s -u couchbase:couchbase -d "SELECT COUNT(*) AS count FROM GleambookUsers;" http://localhost:9600/query/service | python3 -c "import sys, json; print(json.load(sys.stdin)['results'][0]['count'])")
COUNTCHIRP=$(curl -s -u couchbase:couchbase -d "SELECT COUNT(*) AS count FROM ChirpMessages;" http://localhost:9600/query/service | python3 -c "import sys, json; print(json.load(sys.stdin)['results'][0]['count'])")
BUCKET_COUNT=$(($COUNTMSG + $COUNTUSER + $COUNTCHIRP))
echo -e "Analytics row count: $BUCKET_COUNT"
sleep 1
done

