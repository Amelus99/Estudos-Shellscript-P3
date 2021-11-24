#! /bin/bash

read -p "Digite 4 números com casas decimais: " a b c d

menor=$a

for num in ${b} ${c} ${d}; do
	
	menor=$(echo "scale=3;if($num < $menor) $num else $menor" | bc)

done

echo -e "O menor numero é: ${menor}"

