#!/bin/bash

function grep_info {
	stop_color="\033[m" 	
	echo -e "${BGcl}${TcL}HOSTNAME${stop_color} = ${BGcR}${TcR}$(hostname)${stop_color}"
	echo -e "${BGcl}${TcL}TIMEZONE${stop_color} = ${BGcR}${TcR}$(cat /etc/timezone) $(date "+UTC%z" | tr -d '0')${stop_color}"
	echo -e "${BGcl}${TcL}USER${stop_color} = ${BGcR}${TcR}$(whoami)${stop_color}"
	echo -e "${BGcl}${TcL}OS${stop_color} = ${BGcR}${TcR}$(cat /etc/issue.net)${stop_color}"
	echo -e "${BGcl}${TcL}DATE${stop_color} = ${BGcR}${TcR}$(date '+%d %B %Y %T')${stop_color}"
	echo -e "${BGcl}${TcL}UPTIME${stop_color} = ${BGcR}${TcR}$(uptime -p)${stop_color}" 
	echo -e "${BGcl}${TcL}UPTIME_SEC${stop_color} = ${BGcR}${TcR}$(cat /proc/uptime | awk '{printf "%d sec \n",$1}')${stop_color}" 	
	echo -e "${BGcl}${TcL}IP${stop_color} = ${BGcR}${TcR}$(hostname -I)${stop_color}" 
	echo -e "${BGcl}${TcL}MASK${stop_color} = ${BGcR}${TcR}$(ifconfig |grep -e "broadcast" | awk '{print $4}')${stop_color}" 
	echo -e "${BGcl}${TcL}GATEWAY${stop_color} = ${BGcR}${TcR}$(ip  r l | grep default | awk '{print $3}')${stop_color}"
	echo -e "${BGcl}${TcL}RAM_TOTAL${stop_color} = ${BGcR}${TcR}$(free | awk 'NR==2{printf "%.3f GB\n",$2/1000000}')${stop_color}"
	echo -e "${BGcl}${TcL}RAM_USED${stop_color} = ${BGcR}${TcR}$(free | awk 'NR==2{printf "%.3f GB\n",$3/1000000}')${stop_color}"
	echo -e "${BGcl}${TcL}RAM_FREE${stop_color} = ${BGcR}${TcR}$(free | awk 'NR==2{printf "%.3f GB\n",$4/1000000}')${stop_color}"
	echo -e "${BGcl}${TcL}SPACE_ROOT${stop_color} = ${BGcR}${TcR}$(free | awk 'NR==3{printf "%.2f Mb\n",$2/1000}')${stop_color}" 
	echo -e "${BGcl}${TcL}SPACE_ROOT_USED${stop_color} = ${BGcR}${TcR}$(df | grep -w "/" | awk '{printf "%.2f Mb \n",$3/1000}')${stop_color}"
	echo -e "${BGcl}${TcL}SPACE_ROOT_FREE${stop_color} = ${BGcR}${TcR}$(df | grep -w "/" | awk '{printf "%.2f Mb \n",$4/1000}')${stop_color}"
	echo
}
