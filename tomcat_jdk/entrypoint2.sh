#!/bin/bash
set -e
vars="RDS_DATABASE_HOST_REPLACE
RDS_DATABASE_USER_REPLACE
RDS_DATABASE_PASSWD_REPLACE
REDIS_DATABASE_HOST_REPLACE
REDIS_DATABASE_PASSWD_REPLACE
WX_OP_SHIRO_APPKEY_REPLACE
WX_OP_SHIRO_APPSECRET_REPLACE
WX_DEALER_SHIRO_APPKEY_REPLACE
WX_DEALER_SHIRO_APPSECRET_REPLACE
WECHAT_MAIN_DOMAIN_REPLACE
CRM_MAIN_DOMAIN_REPLACE"


echo "${vars}" |while read line_name
do
	eval line_value="\$${line_name}"
	echo $line_value
	[ -z "${line_value}" ] && continue
        sed -i "s#$line_name#${line_value}#g" common.properties
done
