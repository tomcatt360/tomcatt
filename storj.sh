#!/bin/bash
sudo pip3 install dataserv-client --upgrade
dataserv-client --url=http://switch.driveshare.org --max_size=32G farm
