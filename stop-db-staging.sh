#!/bin/bash

docker stop ngl-staging
docker rm ngl-staging

# if this doesn't work you may have to try this:
#
#  docker exec -it ngl-staging bash 
#  kill 1
#
