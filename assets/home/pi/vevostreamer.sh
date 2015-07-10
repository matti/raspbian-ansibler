#!/usr/bin/env bash

while true
do
    /usr/local/bin/livestreamer --yes-run-as-root hlsvariant://http://vevoplaylist-live.hls.adaptive.level3.net/vevo/ch1/appleman.m3u8 best --player /usr/bin/omxplayer --fifo --player-args "--win \"0 0 1920 1200\" {filename}"
    sleep 0.1
done
