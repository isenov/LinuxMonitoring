#!/bin/bash

source grep_info.sh
source choose_color.sh
source check_values.sh
source determinate_color.sh
source set_color.sh
source print_color_value.sh
source color_config.conf

if [[ $# -ne 0 ]]; then
    echo "Программа не имеет аргументов"
else
	determinate_color 
	check_values $def_column1_background $def_column1_font_color $def_column2_background $def_column2_font_color 
  grep_info $BGcL $TcL $BGcR $TcR
	print_color_value $def_column1_background $def_column1_font_color $def_column2_background $def_column2_font_color 
fi




