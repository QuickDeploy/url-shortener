#! /bin/bash

docker service create \
	--name us-mysql \
	--hostname us-mysql \
	--network swarm-net \
	--replicas 1 \
	--endpoint-mode dnsrr \
	--mount type=bind,source=/data/us/mysql/data,target=/var/lib/mysql \
	-e MYSQL_ROOT_PASSWORD=123456 \
	-e MYSQL_DATABASE=urlshortener \
	mysql:5.7
