#!/bin/bash
############### Changelog below
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
				ssh ${APLIST[${i}]} "(echo "Truncated." > /jffs/nocat.log)"
					ssh ${APLIST[${i}]} "(date >> /jffs/nocat.log && echo "Killing splashd" >> /jffs/nocat.log && killall splashd)"
						sleep 10
							ssh ${APLIST[${i}]} "(echo "Starting splashd" >> /jffs/nocat.log && splashd >> /jffs/nocat.log)"
								#ssh ${APLIST[${i}]} "(reboot)"
								done

								echo "End of Captive Portal reboots."

								echo "Goodbye!"
