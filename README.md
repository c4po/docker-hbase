docker-hbase
============


docker run -it -p 9090:9090 -p 9095:9095 -p 2181:2181 -p 60000:60000 -p 60010:60010 -p 60020:60020 -p 60030:60030 --entrypoint="/bin/bash" nurun/hbase

docker build -t nurun/hbase .

docker run -d -p 9090:9090 -p 9095:9095 -p 2181:2181 -p 60000:60000 -p 60010:60010 -p 60020:60020 -p 60030:60030 nurun/hbase 

docker run -it -p 9090:9090 -p 9095:9095 -p 2181:2181 -p 60000:60000 -p 60010:60010 -p 60020:60020 -p 60030:60030 nurun/hbase /bin/bash