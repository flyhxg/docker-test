#!/bin/bash
set -e
vars="RDS_DATABASE_HOST_REPLACE
RDS_DATABASE_USER_REPLACE
RDS_DATABASE_PASSWD_REPLACE
REDIS_DATABASE_PASSWD_REPLACE"

echo  "${vars}" |while read line_name
do
	if [ "$line_name" != "REDIS_DATABASE_PASSWD_REPLACE"  ];then
		if [ -z "$line_name" ];then
   			 echo "You must set the $line_name environment variable"
   			  exit 1
  fi
fi
	eval line_value="\$${line_name}"
        sed -i "s#$line_name#${line_value}#g" /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/common.properties
done
/usr/local/tomcat/bin/startup.sh && tail -f /usr/local/tomcat/logs/catalina.out
