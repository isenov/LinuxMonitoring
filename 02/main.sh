#!/bin/bash

source grep_info.sh
source save_in_file.sh



if [[ $# -gt 0 ]]; then
	echo "Программа не имеет опций/аргументов"	
	exit 1
else
	grep_info
	info=$(grep_info)
	question_save
fi
