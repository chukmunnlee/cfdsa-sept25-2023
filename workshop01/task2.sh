#!/bin/sh

# Create a network
# docker network create mynet

# Create a volume for the database
# docker volume create data-vol

# Create the database mydb
# docker run -d --name mydb \
#	--network mynet \
#	--mount type=volume,src=data-vol,dst=/var/lib/mysql \
#	stackupiss/northwind-db:v1

# Create the application myapp 
docker run -d -p 8080:3000 \
	--network mynet \
	-e DB_HOST=mydb \
	-e DB_USER=root \
	-e DB_PASSWORD=changeit \
	stackupiss/northwind-app:v1
