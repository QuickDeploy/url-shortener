#! /bin/bash

docker service create \
	--name us-mysql \
	--hostname us-mysql \
	--network us-net \
	--replicas 1 \
	--detach=true \
	--endpoint-mode dnsrr \
	--user 1000:1000 \
	--mount type=bind,source=/data/us/mysql/data,target=/var/lib/mysql \
	-e MYSQL_ROOT_PASSWORD=123456 \
	-e MYSQL_DATABASE=urlshortener \
	mysql:5.7
