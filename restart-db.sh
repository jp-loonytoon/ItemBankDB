#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


$DIR/stop-db.sh
$DIR/start-db.sh

