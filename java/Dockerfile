FROM       docker.io/elain/centos7.2:latest
MAINTAINER linux

ADD 1.8.0_144.tar.gz  /usr/local
ENV JAVA_HOME /usr/local/1.8.0_144
ENV JRE_HOME /usr/local/1.8.0_144/jre
ENV CLASSPATH .:$JAVA_HOME/jre/lib/rt.jar  :$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH $JAVA_HOME/bin:$PATH
