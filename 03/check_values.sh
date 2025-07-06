#!/bin/bash

function check_values {
	if [[ $1 == $2 || $3 == $4 ]]; then
		echo -en "Значения 1 и 2 или 3 и 4 НЕ должны совпадать\nПерезапустите программу \n"
		exit 0
	fi
}
