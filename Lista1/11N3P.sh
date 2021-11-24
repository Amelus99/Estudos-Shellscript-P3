#!/bin/bash 
 
a=$(wc -l <$1)
b=$(wc -l <$2)
c=$(wc -l <$3)

echo "total de linhas: $(( ${a} + ${b} + ${c} ))"
