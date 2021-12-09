#! /bin/bash

echo -e "transforme as pedras em que tropeça em escada - ja era pra eu estar em marte"

case "$1" in
    -a)	
        ls -l | grep ^d
        ;;
    -b)
        ls -l | grep ^-
        ;;
    -c)
        ls -l | grep ^l
	;;
    *)  echo "Opção não existente"
        ;;
esac
