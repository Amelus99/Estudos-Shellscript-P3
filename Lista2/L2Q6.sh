#! /bin/bash

if [[ ! -e ${1} ]] || (( $(wc -l < ${1}) > 3 )); then
	echo -e "\nBAD"
else 
	echo "" 
	tail -n 1 ${1}
fi

