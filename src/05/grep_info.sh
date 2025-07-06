#!/bin/bash

function grep_info {
	count_path=$(find  $path_to \!  -type f 2>/dev/null |wc -l|awk '{print $1-1}')
	top_5_folder=$(find $path_to -type d -exec du -h {} \; 2>/dev/null |sort -h -r| head -n5 |awk '{print FNR  " - " $2", "$1 }')
	count_file=$(find  $path_to \!  -type d 2>/dev/null |wc -l)
	count_conf_file=$(find $path_to -type f -name "*.conf" 2>/dev/null |wc -l)
	count_txt_file=$(find $path_to -type f -name "*.txt" 2>/dev/null |wc -l)
	count_execute_filep=$(find $path_to -perm /a=x \! -type d 2>/dev/null |wc -l)
	count_log_file=$(find $path_to -type f -name "*.log" 2>/dev/null |wc -l)
	count_zip_file=$(find $path_to -type f \( -name '*.7z' -or -name '*.ace' -or -name '*.arj' -or -name '*.bin' -or -name '*.cab' -or -name '*.cbr' -or -name '*.deb' -or -name '*.exe' -or -name '*.gz' -or -name '*.gzip' -or -name '*.jar' -or -name '*.one' -or -name '*.pak' -or -name '*.pkg' -or -name '*.ppt' -or -name '*.rar' -or -name '*.rpm' -or -name '*.sh' -or -name '*.sib' -or -name '*.sis' -or -name '*.sisx' -or -name '*.sit' -or -name '*.sitx' -or -name '*.spl' -or -name '*.tar' -or -name '*.tar-gz' -or -name '*.tgz' -or -name '*.xar' -or -name '*.zip' \) 2>/dev/null|wc -l)
	count_sym_link_file=$(find  $path_to -type l 2>/dev/null |wc -l)
	top_10_files=$(find $path_to -type f -exec du -h {} \; 2>/dev/null| sort -h -r | head -n10 | awk '{split($2,a,"."); ext=a[length(a)]; print FNR " - " $2 ", " $1 ", " substr(ext, 1, 256)}')
	top_10_executable_files=$(find $path_to -type f -executable -exec du -h {} \;  2>/dev/null | sort -hr | head -n 10 | awk '{print  $2}' | xargs -I{} sh -c 'echo "{} $(du -h "{}" | awk "{print   \$1}") $(md5sum "{}" | awk "{print \$1}")"'|awk '{print FNR " - "$1,$2", "$3}' )

}


