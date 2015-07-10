#!/usr/bin/env bash

while true
do
    livestreamer http://ustream.tv/channel/iss-hdev-payload mobile_478p --player omxplayer --fifo --player-args "--win \"0 0 1920 1200\" {filename}"
    sleep 0.1
done
