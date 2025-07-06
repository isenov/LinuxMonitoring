function print_info {
	echo "Total number of folders (including all nested ones) = $count_path"  
	echo -e "TOP 5 folders of maximum size arranged in descending order (path and size): \n$top_5_folder\n"
	echo -e "Total number of files = $count_file\n"
	echo "Number of:"  
	echo "Configuration files (with the .conf extension) = $count_conf_file "
	echo "Text files = $count_txt_file " 
	echo "Executable files = $count_execute_filep"
	echo "Log files (with the extension .log) = $count_log_file  "
	echo "Archive files = $count_zip_file  "
	echo -e "Symbolic links = $count_sym_link_file \n" 
	echo -e "TOP 10 files of maximum size arranged in descending order (path, size and type): \n$top_10_files\n"
	echo -e "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file) \n$top_10_executable_files\n"

	time_script_end=$(date "+%s.%N" )
	total_time=$(echo "$time_script_end-$time_script_start"|bc|awk '{printf "%.3f", $0}')
	echo "Script execution time (in seconds) = $total_time"
}
