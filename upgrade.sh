#!/bin/bash
# this is an apt update script
sudo echo "Updating package lists (update)"
sudo apt-get update
echo "Upgrading packages (upgrade)"
sudo apt-get $1 upgrade
echo "Upgrading System packages (dist-upgrade)"
sudo apt-get $1 dist-upgrade
echo "Cleaning up (autoclean)"
sudo apt-get autoclean
echo "Done."
