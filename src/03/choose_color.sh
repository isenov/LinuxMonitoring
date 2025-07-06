#!/bin/bash

function choose_color {
	var_color=-1
	case $1 in
		1 )
			var_color=7
			;;
		2 )
			var_color=1
			;;
		3 )
			var_color=2
			;;
		4 )
			var_color=4
			;;
		5 )
			var_color=5
			;;
		6 )
			var_color=0
			;;
		* )
			var_color=0
			echo 
			;;
	esac
	return $var_color
}
