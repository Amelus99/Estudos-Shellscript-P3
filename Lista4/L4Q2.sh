#!/bin/bash

users=( )
nomes=$(cut -d ' ' -f 1 $1 | sort -u)
NL=$(wc -l < $1)
soma=0
index=0

for n in ${nomes}; do
    users=( ${users[*]} $n )
done


function pesquisa {

    for (( i=0; i<${#users[*]}; i++ )) 
    do
        if [ "$1" == "${users[$i]}" ]; then
            index=$i
        fi
    done

}

for (( l=1; l<=${NL}; l++ )) 
do
    n=$(sed -n ${l}p < $1 | cut -d ' ' -f 1)
    pesquisa $n
    v=$(sed -n ${l}p < $1 | cut -d ' ' -f 3)
    sed -n ${l}p < $1 | cut -d ' ' -f 3 >> usuario${index}
    echo -e "Usuário: ${n} - Tamanho = ${v}"
done

echo -e "\nTotais\n"

for (( i=0; i<${#users[*]}; i++ )) do

    somatorio=$(cat usuario${i})
    for v in $somatorio; do
        soma=$(($soma + $v))
    done
    echo -e "Usuario: ${users[$i]} - Total: $soma."
    soma=0
    rm usuario${i}

done
