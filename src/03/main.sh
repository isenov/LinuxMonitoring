#!/bin/bash

source grep_info.sh
source choose_color.sh
source check_values.sh
source set_color.sh

regex="^[1-6]$"
if [[ $# -ne 4 ]]; then
	echo "Программа имеет 4 опции/аргумента"	
	exit 1
elif [[ $1 =~ $regex && $2 =~ $regex && $3 =~ $regex && $4 =~ $regex ]]; then
		check_values $1 $2 $3 $4
		set_color $1 $2 $3 $4
else
		echo "Опции должны быть из диапазона [1..6]"
	exit 1	
fi




