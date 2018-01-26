FROM bijukunjummen/rabbitmq-base:3.7.0
MAINTAINER yy static@cloud-young.com
ENV TIME_ZONE Asia/Shanghai
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ADD rabbitmq.config /etc/rabbitmq/
ADD erlang.cookie /var/lib/rabbitmq/.erlang.cookie
ADD startrabbit.sh /opt/rabbit/
ADD rabbitmq_delayed_message_exchange-0.0.1.ez \
/usr/lib/rabbitmq/lib/rabbitmq_server-3.7.0/plugins/
RUN chmod u+rw /etc/rabbitmq/rabbitmq.config \
&& chown rabbitmq:rabbitmq /var/lib/rabbitmq/.erlang.cookie \
&& chmod 400 /var/lib/rabbitmq/.erlang.cookie \
&& mkdir -p /opt/rabbit \
&& chmod a+x /opt/rabbit/startrabbit.sh
RUN  rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange

EXPOSE 5672
EXPOSE 15672
EXPOSE 25672
EXPOSE 4369
EXPOSE 9100
EXPOSE 9101
EXPOSE 9102
EXPOSE 9103
EXPOSE 9104
EXPOSE 9105

CMD /opt/rabbit/startrabbit.sh
