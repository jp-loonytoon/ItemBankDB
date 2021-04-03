#!/bin/bash

DB_NAME=NGLItemBank
DB_INSTANCE=ngl-staging
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

DB_DIR=$DIR/$DB_INSTANCE
ROOT_PWD=`cat $DIR/.db-credentials`

docker run --name $DB_INSTANCE -p 33061:3306 \
    --rm -d \
    -v $DB_DIR/config:/etc/mysql/conf.d \
    -v $DB_DIR/datadir:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=$ROOT_PWD \
    -e MYSQL_DATABASE=$DB_NAME \
    mariadb:10.5
