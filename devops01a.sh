#!/bin/bash
#                                               
#                                            *****  Damian Anudokem ********
# 
# This scripts is designed to get information about my computer including number of volumes, sizes of each volume, free spaces 
# on each volume number cpus/cores, information about the cpus/cores, amount of rams, mac address and IP address. 
# Print these details out.
#
clear 
#
echo "This information is brought to you by $0."


#  System disk space :
echo "Disk Utilization:" 
df -mh

#
#Free and Used Memory: 
echo "Memory details:"
free -mh
echo "                   "

#CPU information 
lscpu

#System information showing mac address and ip address
echo " Following are mac address and iP address"
ifconfig  -a 







