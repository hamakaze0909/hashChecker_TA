#!/bin/sh

if [ $# -ne 2 ]; then
    echo "[error] please select 2 files" 1>&2
    exit 1
fi

echo "hash check start..."
hash1=`md5sum $1`
hash2=`md5sum $2`

hash1=`echo ${hash1} | sed -e 's/\s.*//'`
hash2=`echo ${hash2} | sed -e 's/\s.*//'`
#echo ${hash1}
#echo ${hash2}
if [ ${hash1} = ${hash2} ]; then
    echo "found plagiarist!"
    exit 0
fi

echo "different file"
exit 0