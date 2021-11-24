#! /bin/bash

read -p "Digite uma opção de redirecionador(>, >>, 2>, 2>>, &>, &>>, <, <<, <<<, e | ), ou exit para finalizar: " op

echo -e "\n"

while [ "${op}" != "exit" ]; do

	if [[ $op == ">" ]]; then
		echo -e "redireciona a saída padrao do comando anterior para um arquivo, sobreescreve o arquivo, caso não exista será criado.\n Ex: ls > ls.txt\n"
	
	elif [[ $op == ">>" ]]; then
		echo -e "redireciona a saída padrao do comando anterior colocando-a no final do arquivo, não apaga o que há nele, caso não exista será criado.\n Ex: echo pastas >> ls.txt\n"
	
	elif [[ $op == "2>" ]]; then
		echo -e "redireciona a saída de erro do comando anterior para um arquivo, sobreescreve o arquivo, caso não exista será criado.\n Ex: blabla 2> erros.txt\n"

	elif [[ $op == "2>>" ]]; then
		echo -e "redireciona a saída de erro do comando anterior para o final do arquivo, não apaga o que há nele, caso não exista será criado.\n Ex: lalala 2>> erros.txt\n"
	
	elif [[ $op == "&>" ]]; then
		echo -e "redireciona todo tipo de saída do comando anterior para um arquivo, sobreescreve o arquivo, caso não exista será criado.\n Ex: cat /etc/* &> duplo.txt\n"

	elif [[ $op == "&>>" ]]; then
		echo -e "redireciona todo tipo de saída do comando anterior para o final do arquivo, não apaga o que há nele, caso não exista será criado.\n Ex: cat /etc/* &>> duplo.txt\n"

	elif [[ $op == "<" ]]; then
		echo -e "redireciona o conteudo do arquivo para a entrada do comando.\n Ex: wc < ls.txt não consegui pensar em um exemplo melhor desculpe.\n"

	elif [[ $op == "<<" ]]; then
		echo -e "redireciona o conteudo digitado pelo usuario enquanto não for digitado a palavra indicada para finalização do processo na entrada\n Ex: cat << maoe\n"

	elif [[ $op == "<<<" ]]; then
		echo -e "redireciona a string digitada para a entrada do comando \n Ex: wc -c <<< "a caminho do ifpb" \n"

	elif [[ $op == "|" ]]; then
		echo -e "redireciona a saída de um comando para a entrada de outro.\n Ex: ls | grep 1 | tee teste.txt | wc -l\n"

	else
		echo -e "\nComando não existente.\n"
	fi

	read -p "Digite uma opção de redirecionador(>, >>, 2>, 2>>, &>, &>>, <, <<, <<<, e | ), ou exit para finalizar: " op
	echo -e "\n"
done

