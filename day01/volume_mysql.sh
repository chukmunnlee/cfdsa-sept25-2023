#!/bin/bash

docker run -d -p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=123456 \
	--mount type=volume,src=my-vol,dst=/var/lib/mysql \
	mysql:8.1 
