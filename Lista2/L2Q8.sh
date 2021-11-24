#! /bin/bash
a=${1}
b=${2}


#for ((i=0;i<=108;i++)); do
	
#	if (( i%2 != 0)); then 
#		echo -e "$i\n"
#       fi
#done

echo -e "\nVersão Melhorada-----------\n"

for ((i=${a}; i<=${b}; i++)); do
	
	if (( i%2 != 0)); then
		echo -e "$i\n"
	fi
done
