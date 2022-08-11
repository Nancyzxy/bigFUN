#!/bin/bash

if [ -z ${BIGFUN_HOME} ]
then 
	echo "ERROR: BIGFUN_HOME is not defined."
	exit 1
fi

CONFIGFILE=${BIGFUN_HOME}/conf/asterixdb/bigfun-conf.json
if [ ! -f ${CONFIGFILE} ]; then
	echo -e "ERROR: The configuration file for BigFUN (with the name bigfun-conf.json ) can not be found under ${BIGFUN_HOME}/conf/asterixdb directory."
	exit 1
fi

QGENCONFIGFILE=${BIGFUN_HOME}/conf/asterixdb/query-params.txt
if [ ! -f ${QGENCONFIGFILE} ]; then
        echo -e "ERROR: The query generator config file (with the name query-params.txt ) can not be found under ${BIGFUN_HOME}/conf/asterixdb directory."
        exit 1
fi

WORKLOADFILE=${BIGFUN_HOME}/conf/workload.txt
if [ ! -f ${WORKLOADFILE} ]; then
	echo -e "ERROR: The workload file (with the name workload.txt ) can not be found under ${BIGFUN_HOME}/conf directory."
	exit 1
fi

QUERYINDEXFILE=${BIGFUN_HOME}/conf/asterixdb/query-index.json
if [ ! -f ${QUERYINDEXFILE} ]; then    
	echo -e "Generating query-index file ..."
	${BIGFUN_HOME}/scripts/qix-gen.sh ${BIGFUN_HOME}/files/queries/asterixdb ${QUERYINDEXFILE}
fi
mkdir -p ${BIGFUN_HOME}/files/output

java -cp ${BIGFUN_HOME}/target/bigfun-driver-jar-with-dependencies.jar driver.Driver ${BIGFUN_HOME} ${CONFIGFILE}





