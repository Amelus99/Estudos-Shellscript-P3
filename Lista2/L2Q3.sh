#! /bin/bash

n1=${1}
n2=${2}

if [[ $n1 > $n2 ]]; then
	echo -e "Menor: ${n2}"
	echo -e "Maior: ${n1}"
elif [[ $n2 > $n1 ]]; then
	echo -e "Menor: ${n1}"
	echo -e "Maior: ${n2}"
fi
