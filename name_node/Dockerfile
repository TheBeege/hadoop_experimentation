FROM hadoop 

RUN sed -i s/hadoop-name-node/localhost/ /opt/hadoop/etc/hadoop/core-site.xml

CMD /opt/hadoop/sbin/hadoop-daemon.sh --config /etc/hadoop --script hdfs start namenode
