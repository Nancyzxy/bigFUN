#!/bin/bash

PDIR=$1
OUTPUTFILE=$2

rm -f ${OUTPUTFILE}
echo -e "{" >> ${OUTPUTFILE}

for i in 103 104 108 1014 1015
do

QFile=${PDIR}/q${i}.sqlpp

if [ ! -f ${QFile} ]; then
    echo -e "WARNING: The query file for query $i can not be found at ${QFile} !"
fi

echo -e "\"${i}\" : \"${QFile}\"," >> ${OUTPUTFILE}
done

echo -e "}" >> ${OUTPUTFILE}
