FROM openjdk:8-jre-slim

RUN curl -o hadoop.tar.gz http://www.apache.org/dyn/closer.cgi/hadoop/common/hadoop-2.8.1/hadoop-2.8.1.tar.gz
RUN curl -O https://dist.apache.org/repos/dist/release/hadoop/common/KEYS
RUN gpg --import KEYS
RUN gpg --verify hadoop.tar.gz.asc
RUN mkdir /opt/hadoop
RUN tar -zxvf hadoop.tar.gz -C /opt/hadoop
RUN mkdir /etc/hadoop



