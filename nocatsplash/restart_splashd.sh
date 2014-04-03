#!/bin/sh
#NoCatSplash restart script originally found at http://dev.gengar.org/2011/02/nocatsplash/

killall splashd
sleep 5
splashd >> /tmp/nocat.log 2>&1 &
