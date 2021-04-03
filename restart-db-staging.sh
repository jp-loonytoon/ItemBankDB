#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


$DIR/stop-db-staging.sh
$DIR/start-db-staging.sh

