#! /bin/bash

docker service create \
	--name us-web \
	--hostname us-web \
	--network us-net \
	--replicas 1 \
	--publish 80:80 \
	--mount type=bind,source=/etc/localtime,target=/etc/localtime \
	--mount type=bind,source=/data/us/web/config,target=/config \
	--mount type=bind,source=/data/us/web/logs,target=/var/log/apache2 \
	quickdeploy/url-shortener:0.2
