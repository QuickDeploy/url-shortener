#! /bin/bash

docker service create \
	--name us-web \
	--hostname us-web \
	--network swarm-net \
	--replicas 1 \
	--publish mode=host,published=80,target=80 \
	--mount type=bind,source=/etc/localtime,target=/etc/localtime \
	--mount type=bind,source=/data/us/web/config,target=/config \
	--mount type=bind,source=/data/us/web/logs,target=/var/log/apache2 \
	quickdeploy/url-shortener:0.2
