#!/bin/bash
while [ "100" -gt "1" ]
do
echo "Starting up... Press Ctrl-C to abort"
sleep 30
java -Xmx512M -Xms100M -jar minecraft_server.1.8.jar nogui
echo "server down,"
done
