#!/bin/sh

sed -E -e 's/ {2,}[[:alnum:]]* [[:alpha:]].*//'  < $1 > RankMeninos.txt
sed -E -e 's/[[:alnum:]]* [[:alpha:]].* {2,}//' < $1 > RankMeninas.txt

sed -E -e 's/ {2,}.*//'  < $1
echo ''
sed -E -e 's/[[:alnum:]]*.* {2,}//' < $1 
