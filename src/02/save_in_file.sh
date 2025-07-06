#!/bin/bash


function question_save {
	echo -en "\nСохранить информацию в файл? (Y/N): "
	read -n 1 answer
	case "$answer" in
	"Y" | "y")
		file_name=$(date '+%d_%m_%Y_%H_%M_%S.status')
		echo "$info" >> $file_name
		echo -e "\nИнформация сохранена в файле c именем: $file_name"
		;;
	"N" | "n")
		echo 
		exit 0
		;;
	* )
		echo
		exit 1
				
	;;  
esac	
}
