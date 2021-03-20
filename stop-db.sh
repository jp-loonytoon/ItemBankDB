#!/bin/bash

docker stop mariadb-staging
docker rm mariadb-staging

# if this doesn't work you may have to try this:
#
#  docker exec -it mariadb-staging bash 
#  kill 1
#
