FROM openjdk:8-jre-slim

RUN apt-get update \
	&& apt-get install -y --no-install-recommends net-tools curl gpg
RUN curl -sfSL http://apache.mirror.cdnetworks.com/hadoop/common/hadoop-2.8.1/hadoop-2.8.1.tar.gz -o /tmp/hadoop.tar.gz
RUN curl -sfSL https://dist.apache.org/repos/dist/release/hadoop/common/hadoop-2.8.1/hadoop-2.8.1.tar.gz.asc -o /tmp/hadoop.tar.gz.asc
RUN curl -sfSL https://dist.apache.org/repos/dist/release/hadoop/common/KEYS -o /tmp/KEYS
RUN gpg --import /tmp/KEYS
RUN gpg --verify /tmp/hadoop.tar.gz.asc
# TODO: add verification of file
RUN mkdir /etc/hadoop /namenode /datanode
RUN tar -zxf /tmp/hadoop.tar.gz -C /opt/
RUN  rm /tmp/KEYS /tmp/hadoop.tar.gz*

COPY ./*.xml /etc/hadoop/

RUN bin/hdfs namenode -format

