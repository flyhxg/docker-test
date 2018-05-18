#!/bin/bash
set -e 
TMP=${PATHS}
config=/etc/filebeat/filebeat.yml
if [ ${TMP:0:1} = '/' ] ;then
    tmp='"'${PATHS}'"'
fi
sed -i -E "s#INPUT_TYPE#${INPUT_TYPE}#g" $config
sed -i -E "s#ES_SERVER#${ES_SERVER}#g" $config
sed -i -E "s#INDEX#${INDEX}#g" $config
sed -i -E "s#PATHS#${TMP}#g" $config
sed -i -E "s#ES_USERNAME#${ES_USERNAME}#g" $config
sed -i -E "s#ES_PASSWORD#${ES_PASSWORD}#g" $config

env
echo 'Filebeat init process done. Ready for start up.'
echo "Using the following configuration:"
cat /etc/filebeat/filebeat.yml
exec "$@"
