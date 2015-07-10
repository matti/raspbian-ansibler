#!/usr/bin/env bash

PI_HOST=$1
PI_PORT=$2

ssh -p $PI_PORT root@$PI_HOST "apt-get update && apt-get upgrade -y"
ssh -p $PI_PORT root@$PI_HOST "apt-get install -y python2.7 python-apt"
