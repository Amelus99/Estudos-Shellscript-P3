#! /bin/bash

aux=1

while [[ -n "${1}" ]]; do
	if [[ -e "${1}" ]]; then
	       	echo "${1} SIM"  
	else
		echo "${1} NÃO" 
		aux=0 
	fi
	shift
done

if [[ ${aux} == 1 ]]; then
	echo -e "\nVocê nao pode derrubar o que ja está no chão\n"	
fi
