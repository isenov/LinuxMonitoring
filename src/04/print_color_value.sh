#!/bin/bash

function set_color_name {
	name_color=-1
	case $1 in
		1 )	
			name_color="grey"
			;;
		2 )	
			name_color="red"
			;;
		3 )	
			name_color="green"
			;;
		4 )	
			name_color="blue"
			;;
		5 )
			name_color="magenta"
			;;
		6 )	
			name_color="black"
			;;
	esac
	
}

function print_color_value {
	set_color_name $1
	if [[ -z $column1_background ]]; then
		echo "Column 1 background = default ($name_color)"
	else
		echo "Column 1 background = $def_column1_background ($name_color)"
	fi;
	set_color_name $2
	if [[ -z $column1_font_color ]]; then
		echo "Column 1 font color = default ($name_color)"
	else
		echo "Column 1 font color = $def_column1_font_color ($name_color)"
	fi;
	set_color_name $3
	if [[ -z $column2_background ]]; then
		echo "Column 2 background = default ($name_color)"
	else
		echo "Column 2 background = $def_column2_background ($name_color)"
	fi;
	set_color_name $4
	if [[ -z $column2_font_color ]]; then 
		echo "Column 2 font color = default ($name_color)"
	else
		echo "Column 2 font color = $def_column2_font_color ($name_color)"
	fi;
}
