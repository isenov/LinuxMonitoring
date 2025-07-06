#!/bin/bash

reg="^[1-6]$" 

function check_values {
	if [[ $1 == $2 ]] || [[ $3 == $4 ]]; then
		echo -en "Значения 1 и 2 или 3 и 4 НЕ должны совпадать\nПерезапустите программу \n"
	  exit 0
	elif ! [[ $1 =~ $reg ]] || ! [[ $2 =~ $reg ]] || ! [[ $3 =~ $reg ]] || ! [[ $4 =~ $reg ]] ; then
		echo "Опции должны быть из диапазона [1..6]"
		exit 1
	fi;
  set_color $1 $2 $3 $4
}


