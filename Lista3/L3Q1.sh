#! /bin/bash

read -p "Digite o arquivo desejado: " p

cat ${p} | tr [0-9] X > aux
mv aux $p

