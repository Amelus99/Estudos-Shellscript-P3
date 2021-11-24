#! /bin/bash

read -p "Digite os 2 números desejados: " a b

aa=$((${a}+1))
bb=$((${b}-1))
soma=0
for ((i=${aa}; i<=${bb}; i++)); do
	
	soma=$((${soma}+$i))
	
done

echo -e "${soma}"
