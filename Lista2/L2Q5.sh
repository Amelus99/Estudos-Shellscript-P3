#! /bin/bash

read -p "Digite 4 nomes de arquivos: " -r a b c d

tamanho=0

for arq in ${a} ${b} ${c} ${d}; do

	if [[ -e "${arq}" ]]; then

		if (( $(wc -l < "${arq}") >= ${tamanho} )); then
			tamanho=$(wc -l < "${arq}")
			maior="${arq}"
		fi
	else
		echo -e "O arquivo < ${arq} > não existe"
	fi
done

echo -e "Arquivo com mais linhas: ${maior}"
