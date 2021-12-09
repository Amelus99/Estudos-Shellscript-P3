#! /bin/bash

read -p "Digite o arquivo desejado: " p

tr -s '\n' < $p > aux
mv aux $p
