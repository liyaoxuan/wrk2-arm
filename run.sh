#!/bin/bash

## A script to run a test

RPS=$1
IP=128.253.128.73
PORT=80
PN=/home/sc2682/client/wrk2
MEASURE=20
CONN=400

#nice -n -20 
./wrk -P -c $CONN -t 40 -d $MEASURE -s scripts/multiplepaths.lua --u_latency --timeout 10000000 -R $RPS http://$IP:$PORT -- 1


