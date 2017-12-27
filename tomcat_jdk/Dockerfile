FROM      192.168.20.210:8088/jdk:1.8
MAINTAINER yy-linux
ENV TIME_ZONE Asia/Shanghai
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV CATALINA_HOME /usr/local/tomcat
ENV APP_DIR ${CATALINA_HOME}/webapps/
COPY ./apache-tomcat-8.5.2.tar.gz /usr/src
RUN set -x \
    \
    && tar zxf /usr/src/apache-tomcat-8.5.2.tar.gz -C /usr/local \
    && rm -rf /usr/src/apache-tomcat-8.5.2.tar.gz \
    && echo "${TIME_ZONE}" > /etc/timezone \
    && ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime
EXPOSE 8080 8443
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && tail -f /usr/local/tomcat/logs/catalina.out
ONBUILD ADD . ${APP_DIR}
