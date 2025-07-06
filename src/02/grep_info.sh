#!/bin/bash

function grep_info {
	echo "HOSTNAME = $(hostname)"
	echo "TIMEZONE = $(date "+UTC%z" | tr -d '0')"
	echo "USER = $(whoami)"
	echo "OS = $(cat /etc/issue.net)" 
	echo "DATE = $(date '+%d %B %Y %T')"
	echo "UPTIME = $(uptime -p)" 
	echo "UPTIME_SEC = $(cat /proc/uptime | awk '{printf "%d sec \n",$1}')" 	
	echo "IP = $(hostname -I)" 
	echo "MASK = $(ifconfig |grep -e "broadcast" | awk '{print $4}')" 
	echo "GATEWAY = $(ip  r l | grep default | awk '{print $3}')"
	echo "RAM_TOTAL = $(free | awk 'NR==2{printf "%.3f GB\n",$2/1000000}')"
	echo "RAM_USED = $(free | awk 'NR==2{printf "%.3f GB\n",$3/1000000}')"
	echo "RAM_FREE = $(free | awk 'NR==2{printf "%.3f GB\n",$4/1000000}')"
	echo "SPACE_ROOT = $(free | awk 'NR==3{printf "%.2f Mb\n",$2/1000}')" 
	echo "SPACE_ROOT_USED = $(df | grep -w "/"  | awk '{printf "%.2f Mb \n",$3/1000}')"
	echo "SPACE_ROOT_FREE = $(df | grep -w "/" | awk '{printf "%.2f Mb \n",$4/1000}')"
}
