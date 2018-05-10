#!/bin/bash
if [ -z "$URL" ]; then
  echo "You must set the URL environment variable"
  exit 1
fi

if [ -z "$REDIS_URL" ]; then
  echo "You must set the REDIS_URL environment variable"
  exit 1
fi

if [ -z "$REDIS_PASSWD" ]; then
  echo "You must set the REDIS_PASSWD environment variable"
  exit 1
fi
sed -Ei "s#STATIC_RESOURCE_REPLACE#$URL#g" /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/common.properties
sed -Ei "s#REDIS_DATABASE_HOST_REPLACE#$REDIS_URL#g" /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/common.properties
sed -Ei "s#REDIS_DATABASE_PASSWD_REPLACE#$REDIS_PASSWD#g" /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/common.properties
/usr/local/tomcat/bin/startup.sh && tail -f /usr/local/tomcat/logs/catalina.out
