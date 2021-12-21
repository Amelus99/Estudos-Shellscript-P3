#!/bin/sh

aux="1"

while [ "${aux}" != "0" ]; do

    echo "\nr - Digite o nome de um arquivo que será processado."
    echo "a - Remova todas as letras do arquivo."
    echo "b - Remova todos os dígitos do arquivo."
    echo "c - Substitua todos os caracteres que não são letras nem dígitos do arquivo por ~."
    echo "q - Saia do script\n"
    read -p "Digite a opção desejada: " op

    case "${op}" in

        "r")

            read -p "Digite o nome do arquivo a ser processado: " arq

            if [ ! -e "${arq}" ]; then

                echo "o arquivo < ${arq} > não existe.\n"
                
            fi
        ;;
        "a")

            if [ ! -e "${arq}" ]; then

                echo "o arquivo < ${arq} > não existe.\n"
                
            else
                sed -E -e 's/[[:alpha:]]//g' < ${arq} >  /tmp/tempfile.txt
 	    fi

        ;;
        "b")

            if [ ! -e "${arq}" ]; then

                echo "o arquivo <${arq}> não existe.\n"
                
            else
                sed -E -e 's/[[:digit:]]//g' < ${arq} > /tmp/tempfile.txt
            fi
        ;;
        "c")

            if [ ! -e "${arq}" ]; then

                echo "o arquivo < ${arq} > não existe.\n"
                
            else
                sed -E -e 's/[^[:alnum:]]/~/g' < ${arq} > /tmp/tempfile.txt
            fi
        ;;
        "q")
            aux="0"
        ;;
        *)  echo "Opcao inválida"
        ;;

    esac

done
