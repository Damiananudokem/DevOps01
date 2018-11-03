#!/bin/bash
#
#                                      *********** Damian Anudokem ****************
#                                                  Assignment 00
# ********************************************************************************************************************
#
# Create a second bash script - devOps01b.sh that extends the functionality of devOps01a.sh as follows : 
# -Volumes:
#  if this commands line parameter is found display the same volume information you did in devOps01a.sh
# -CPu:
#  if this commands line parameter is found display the same cpu/core information you did in devOps01a.sh
# -ram:
# if this commands line parameter is found display the same ram information you did in devOps01a.sh
# -Network:
# if this commands line parameter is found display the same mac and ip address information you did in devOps01a.sh
# -all
# display information all command line options
#
# if no command line parameter as passed in:
# display a usage to the user for each option listed above and exit 
# 
# b) periodically stage this file and commit logically in git
# c) periodically commit this file to the remote GitHub repo.
#
#df -H | grep -vE '^Filesystems |tmpfs|cdrom' | awk '{ print $5 " " $1 }'
#
#cat /proc/cpuinfo |awk '/^processor/{print $1, $3}'
#
# How many cores of each CPU:
#cat /proc/cpuinfo |grep "siblings" | sort -u | cut -d: -f2
#
#
#cat /proc/meminfo

echo "Display System information."

echo " 1 - Volume."
echo " 2 - CPU/Core."
echo " 3 - RAM."
echo " 4 - MAC Address and IP Address." 
echo " 5 - All information."

read display;

case $display in 
	1) echo " *** Volumes: ** "

		df -H | grep -vE '^Filesystems |tmpfs|cdrom' | awk '{ print $5 " " $1 }'
		;; 
		
   	2) echo "CPU/Cores."
		cat /proc/cpuinfo |awk '/^processor/{print $1, $3}'
		;;
              			
        3) echo " *** RAM *** "
		cat /proc/meminfo | more
		ifconfig -a
		;;

        4) echo " *** MAC Address and IP Address *** "
		ifconfig -a
		;;
      
        5) echo " *** All Systems information *** "
		df -H | grep -vE '^Filesystems |tmpfs|cdrom' | awk '{ print $5 " " $1 }'
		cat /proc/cpuinfo |awk '/^processor/{print $1, $3}'
	        cat /proc/meminfo | more
		ifconfig -a
		;;
 
 esac
