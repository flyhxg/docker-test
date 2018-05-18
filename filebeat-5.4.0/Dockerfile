# DESCRIPTION:    Filebeat
# SOURCE:         https://github.com/rootsongjc/docker-images/tree/master/filebeat/filebeat-5.4.0
FROM docker.io/elain/centos7.2
MAINTAINER Jimmy Song <rootsongjc@gmail.com>

# Install Filebeat
COPY filebeat-5.4.0-linux-x86_64.tar.gz /usr/local/ 
RUN cd /usr/local && \
    tar xvf filebeat-5.4.0-linux-x86_64.tar.gz && \
    rm -f filebeat-5.4.0-linux-x86_64.tar.gz && \
    ln -s /usr/local/filebeat-5.4.0-linux-x86_64 /usr/local/filebeat && \
    chmod +x /usr/local/filebeat/filebeat && \
    mkdir -p /etc/filebeat

ENV PATHS /var/log/yum.log
ENV ES_SERVER 172.23.5.255:9200
ENV INDEX filebeat-test
ENV INPUT_TYPE log
ENV ES_USERNAME elastic
ENV ES_PASSWORD changeme

ADD ./filebeat.yml /etc/filebeat/
ADD ./docker-entrypoint.sh /usr/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["/usr/local/filebeat/filebeat","-e","-c","/etc/filebeat/filebeat.yml"]
