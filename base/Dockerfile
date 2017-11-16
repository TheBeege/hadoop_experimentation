FROM openjdk:8-jre-slim

RUN apt-get update \
	&& apt-get install -y --no-install-recommends net-tools curl gpg procps
RUN curl -sfSL http://apache.mirror.cdnetworks.com/hadoop/common/hadoop-2.8.2/hadoop-2.8.2.tar.gz -o /tmp/hadoop.tar.gz
RUN curl -sfSL https://dist.apache.org/repos/dist/release/hadoop/common/hadoop-2.8.2/hadoop-2.8.2.tar.gz.asc -o /tmp/hadoop.tar.gz.asc
RUN curl -sfSL https://dist.apache.org/repos/dist/release/hadoop/common/KEYS -o /tmp/KEYS
RUN gpg --import /tmp/KEYS
RUN gpg --verify /tmp/hadoop.tar.gz.asc /tmp/hadoop.tar.gz
RUN mkdir -p /etc/hadoop /namenode/dfs/name /datanode/dfs/data
RUN touch /etc/hadoop/slaves
RUN tar -zxf /tmp/hadoop.tar.gz -C /opt/
RUN mv /opt/hadoop-2.8.2 /opt/hadoop
RUN rm /tmp/KEYS /tmp/hadoop.tar.gz*

COPY ./*.xml /opt/hadoop/etc/hadoop/

ENV HADOOP_PREFIX /opt/hadoop

RUN /opt/hadoop/bin/hdfs namenode -format

ENV USER root
