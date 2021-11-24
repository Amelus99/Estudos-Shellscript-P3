#!/bin/bash

echo -e "Variável\n"

echo -e "O Bash Shell procura todos os simbolos ‘$’ antes de executar o comando e substitui-os pelo valor da variável.\n
Exemplo:\n"
vamp=alucard

echo -e '${vamp} é:' "${vamp}""\n\n"

echo -e "Shell\n"

echo -e "Substituição de comando é o nome do recurso da linguagem Shell que permite executar um comando e fazer com que a saída desse comando substitua o texto do comando\n
Exemplo:\n"

echo -e '$(date +%H:%M:%S) é:'"$(date +%H:%M:%S)""\n\n"

echo -e "Aritmetica\n"

echo -e "A substituição aritmetica permite a execução de calculos dentro do Shell\n
Exemplo:\n"

echo '2020 - 2021 ='"$(( 2020 - 2021 ))"
