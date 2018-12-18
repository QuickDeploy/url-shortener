#! /bin/bash

docker service create \
	--name us-redis \
	--hostname us-redis \
	--network us-net \
	--replicas 1 \
	--detach=true \
	--endpoint-mode dnsrr \
	--user 1000:1000 \
	--mount type=bind,source=/etc/localtime,target=/etc/localtime \
	--mount type=bind,source=/data/us/redis,target=/data \
	redis redis-server --appendonly yes
