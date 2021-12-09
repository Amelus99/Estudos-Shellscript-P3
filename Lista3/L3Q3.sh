#! /bin/bash
 
read -p "Digite um ip desejado com pontos (0.0.0.0): " ip
aux=1
for n in {1..4};do
	octeto=$(cut -d '.' -f $n <<< "$ip")
	octetobin="$(echo "obase=2; ibase=10; $octeto" | bc)"

	echo "Octeto #$aux: $octeto em binário $octetobin" 
	aux=$((${aux}+1))
done
