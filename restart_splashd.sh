#!/bin/sh
killall splashd
sleep 5
splashd >> /tmp/nocat.log 2>&1 &
