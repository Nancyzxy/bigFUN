#!/bin/bash

PDIR=$1
OUTPUTFILE=$2
echo $2
rm -f ${OUTPUTFILE}
echo -e "{" >> ${OUTPUTFILE}

for i in 100 101 102 103 104 105 106 107 108 109 110 111 1010 1011 1012 1013 1014 1015 1016 1017 1018 2012 2013 2014 2015
do

QFile=${PDIR}/q${i}.sqlpp

if [ ! -f ${QFile} ]; then
    echo -e "WARNING: The query file for query $i can not be found at ${QFile} !"
fi

echo -e "\"${i}\" : \"${QFile}\"," >> ${OUTPUTFILE}
done

echo -e "}" >> ${OUTPUTFILE}
