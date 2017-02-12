#! /bin/bash

container_name="my-mysql"
MYSQL_ROOT_PASSWORD="seasteading"
MYSQL_DATABASE="vkp" # virtual ktv platform
MYSQL_USER="daiqian"
MYSQL_PASSWORD="seasteading"

docker run \
  --name ${container_name} \
  -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
  -e MYSQL_DATABASE=${MYSQL_DATABASE} \
  -e MYSQL_USER=${MYSQL_USER} \
  -e MYSQL_PASSWORD=${MYSQL_PASSWORD} \
  -v $PWD/sql:/docker-entrypoint-initdb.d \
  -d mysql:5.7
