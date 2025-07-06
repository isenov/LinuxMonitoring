#!/bin/bash

source grep_info.sh
source print_info.sh

time_script_start=$(date "+%s.%N" )
	
path_to=$1

	if [[  $# -ne 1 ]]; then
    echo "Программа  имеет только 1 аргумент"
	elif [[ ! -d  $1 ]]; then
    echo "Не является каталогом"
	elif [[ ${1: -1} != "/" ]]; then
		echo "Имя каталога должно заканчиваться на \"/\""
	else
		grep_info $path_to
		print_info 
	fi;
	
