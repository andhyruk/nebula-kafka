# FROM ubuntu:18.04
FROM openjdk:8

RUN mkdir /Downloads
RUN mkdir /logs
RUN apt-get update
RUN apt-get install systemd -y
RUN apt-get install curl -y
RUN apt-get install vim -y
RUN curl "https://downloads.apache.org/kafka/2.8.0/kafka_2.12-2.8.0.tgz" -o /Downloads/kafka.tgz

RUN mkdir /kafka
# RUN tar -xvzf /Downloads/kafka.tgz --strip 1
# RUN rm -f /kafka/config/server.properties
# COPY server.properties /kafka/config/server.properties
# COPY zookeeper.service /etc/systemd/system/zookeeper.service
# COPY kafka.service /etc/systemd/system/kafka.service
# CMD systemctl start kafka
RUN pwd
COPY executable.sh /executable.sh
RUN chmod +x /executable.sh
CMD /executable.sh