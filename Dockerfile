FROM dockerfile/java:oracle-java7

MAINTAINER Zhiyuan Cai <zhiyuan.cai@gmail.com>

# install hbase stable version
ENV HBASE_VERSION 0.98.8

RUN mkdir -p /opt/hbase && wget -q "http://www.apache.org/dist/hbase/stable/hbase-$HBASE_VERSION-hadoop2-bin.tar.gz" -O /opt/hbase/hbase-hadoop2-bin.tar.gz

RUN tar xzfv /opt/hbase/hbase-hadoop2-bin.tar.gz -C /opt/hbase --strip-components=1 > /dev/null

COPY conf/hbase-site.xml /opt/hbase/conf/hbase-site.xml

# Thrift API
EXPOSE 9090
# Thrift Web UI
EXPOSE 9095
# zookeeper
EXPOSE 2181
# HBase Master API port
EXPOSE 60000
# HBase Master Web UI
EXPOSE 60010
# Regionserver API port
EXPOSE 60020
# HBase Regionserver web UI
EXPOSE 60030

WORKDIR /opt/hbase
ENTRYPOINT ["/opt/hbase/bin/hbase", "master", "start" ]

CMD []