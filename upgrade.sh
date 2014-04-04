# this is an apt update script
echo "Updating package lists (update)"
sudo apt-get update
echo "Upgrading packages (upgrade)"
sudo apt-get upgrade
echo "Upgrading System packages (dist-upgrade)"
sudo apt-get dist-upgrade
echo "Cleaning up (autoclean)"
sudo apt-get autoclean
echo "Done."
