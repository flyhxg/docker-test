FROM       192.168.20.210:8088/jdk:1.8
MAINTAINER yy-linux  <static@cloud-young.cn>
ENV MAVEN_HOME /opt/maven

# Install maven
# RUN curl -fsSL http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz

COPY maven3.5.tar.gz /opt/

RUN tar xzf /opt/maven3.5.tar.gz -C /opt && \
	yum install git -y && \
	yum clean all && \
   rm -fr /opt/maven3.5.tar.gz && \
    mv /opt/maven3.5  /opt/maven  && \
    ln -s /opt/maven/bin/mvn /usr/bin/mvn
