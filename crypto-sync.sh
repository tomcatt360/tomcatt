#!/bin/bash

#a script to 
echo "Bitcoin sync in progress..."
./bitcoin-qt &
sleep $1
echo "killing bitcoin..."
killall bitcoin-qt

echo "Namecoin sync in progress..."
namecoin &
sleep $1
echo "killing namecoin"
killall namecoin

echo "litecoin sync in progress..."
./litecoin-qt &
sleep $1
echo "killing litecoin..."
killall litecoin-qt

echo "peercoin sync in progress"
./ppcoin-qt &
sleep $1
echo "killing peercoin"
killall ppcoin-qt

echo "primecoin sync in progress"
./primecoin-qt &
sleep $1
echo "killing primecoin"
killall primecoin-qt

echo "calling cow"
xcowsay "done"

