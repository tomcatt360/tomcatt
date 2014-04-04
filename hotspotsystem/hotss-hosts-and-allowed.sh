#!/bin/bash
############### Changelog below
# 20140404 tomcatt
# - Repurposed script to push hotspotsystem rules to existing hotspotsystem locations.
# 20131203 Nelson
# - Split reboots to another script and use cron on controller for push updates.
# 20131202 Nelson
# - Start remote updates to AP's
# 20130919 Nelson
# - Initial script to reboot captive portals.
# - Initial CP hardware is WZR-600HP

###################################################
# Source in and populate the APLIST variable which contains the captive portal
# IPAddresses for the MG Campus.
. /etc/tools/CAPTIVE_PORTAL_LIST

# Set the number of IP Addresses
aplistnum=${#APLIST[@]}


# For each APLIST entry push out the MACADDS to each via ssh
for ((i=0;i<$aplistnum;i++)); do
	echo "Attempting updates on ${APLIST[${i}]}"
	# On the line below we truncate the /jffs/nocat.log, if you need to span some time remark the line
	# but be cautious not to fill up jffs.
	ssh ${APLIST[${i}]} "(nvram set hotss_uamallowed=mg.k12.mo.us,www.mg.k12.mo.us,172.16.0.1,172.16.255.8)"
	ssh ${APLIST[${i}]} "(nvram set dnsmasq_options=address=/mg.k12.mo.us/www.mg.k12.mo.us/172.16.255.8)"
	ssh ${APLIST[${i}]} "(nvram commit)"
	done

echo "End of Captive Portal reboots."

echo "Goodbye!"
