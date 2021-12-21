#!/bin/bash

PID=$$
TR=1

while [ $( pgrep -P ${PID} | wc -l ) -gt 1 ]
do
	ps aux | tr -s " " | tr -d "<>" | tail -n +2 > process.txt

	cut -d " " -f 2 process.txt > pid.txt
	cut -d " " -f 1 process.txt > usr.txt
	cut -d " " -f 3 process.txt > cpu.txt
	cut -d " " -f 4 process.txt > mem.txt
	cut -d " " -f 5 process.txt > vsz.txt
	cut -d " " -f 6 process.txt > rss.txt
	cut -d " " -f 8 process.txt > stt.txt
	cut -d " " -f 11 process.txt > cmd.txt

	paste pid.txt usr.txt cpu.txt mem.txt vsz.txt rss.txt stt.txt cmd.txt \
		| tr "\t" "\n" > process.txt

	cat process.txt
	sleep ${TR}
	
done | 
dados=$(\
yad --center \
	--title="Processos" \
	--width=700 --height=700 \
	--tail --list \
	--column="PID":NUM \
	--column="User":TEXT \
	--column="CPU%":FLT --column="RAM%":FLT \
	--column="VSZ":SZ --column="RSS":SZ \
	--button="Iniciar Processo":"" \
	--button="Matar Processo:":'bash -c "yad --center --title="Matar" --width=300 --height=300 --tail --list --field="Qual o PID do Processo?""' 
	)


rm -f  pid.txt usr.txt cpu.txt mem.txt vsz.txt rss.txt stt.txt cmd.txt process.txt 
