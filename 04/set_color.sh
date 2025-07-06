#!/bin/bash

# Цвет фона
#BGGRAY="\033[47m"     #  ${BGGRAY}
#BGRED="\033[41m"       #  ${BGRED}
#BGGREEN="\033[42m"     #  ${BGGREEN}
#BGBLUE="\033[44m"     #  ${BGBLUE}
#BGMAGENTA="\033[45m"     #  ${BGMAGENTA}
#BGBLACK="\033[40m"     #  ${BGBLACK}

# Цвет текста:
#GRAY="\033[37m"       #  ${GRAY}      # серый цвет знаков
#RED="\033[31m"       #  ${RED}      # красный цвет знаков
#GREEN="\033[32m"     #  ${GREEN}    # зелёный цвет знаков
#BLUE="\033[34m"       #  ${BLUE}      # синий цвет знаков
#MAGENTA="\033[35m"     #  ${MAGENTA}    # фиолетовый цвет знаков
#BLACK="\033[30m"     #  ${BLACK}    # чёрный цвет знаков

function set_color {
	choose_color $1
	BGcl="\033[4$?m"
	choose_color $2
	TcL="\033[3$?m"
	choose_color $3
	BGcR="\033[4$?m"
	choose_color $4
	TcR="\033[3$?m"
}

