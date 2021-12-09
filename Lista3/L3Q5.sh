#! /bin/bash
 
read -s -p "Digite a seha desejada: " s


teste=$(echo "${s}" | grep -E "[a-zA-Z0-9]{6,}" | grep -E "[[:upper:]]" | grep -E "[[:digit:]]")


if [ "$s" == "$teste" ]; then
    echo -e "\nSenha valida"
else
    echo -e "\nSenha invalida"
fi
