#! /bin/bash

echo -e "Digite o nome de 4 diretorios\n"
read -p "Escreva o primeiro diretório:" pri
ls $pri >> out.txt

read -p "Escreva o segundo diretório:" seg
ls $seg >> out.txt

read -p "Escreva o terceiro diretório:" ter
ls $ter >> out.txt

read -p "Escreva o quarto diretório:" qua
ls $qua >> out.txt
