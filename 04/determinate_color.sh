#!/bin/bash

function determinate_color {

def_column1_background=$column1_background
def_column1_font_color=$column1_font_color
def_column2_background=$column2_background
def_column2_font_color=$column2_font_color
	
	if [[ -z "$column1_background" ]]; then
		def_column1_background=6
	fi;

	if  [[ -z $column1_font_color ]]; then
		def_column1_font_color=4
	fi;

	if  [[ -z $column2_background ]]; then
		def_column2_background=6
	fi;

	if  [[ -z $column2_font_color ]]; then
		def_column2_font_color=3
	fi;

}
