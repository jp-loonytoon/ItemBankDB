#!/bin/bash

docker stop mariadb-staging
docker rm ngl-staging

# if this doesn't work you may have to try this:
#
#  docker exec -it mariadb-staging bash 
#  kill 1
#
