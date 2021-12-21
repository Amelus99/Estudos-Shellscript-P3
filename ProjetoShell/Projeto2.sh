KEY=123

ps -eo "%p;%y;%U;%C;%x;%c" | tr -d " " | grep -E ^[[:digit:]] | tr ";" "\n" | yad --plug=${KEY} --list					\
--tabnum=1 --text="Processos atuais" --no-escape --dclick-action="bash -c 'plot_chart %s'" --grid-lines="both"					\
--column="PID:NUM" --column="TTY:TEXT" --column="User:TEXT" 					\
--column="CPU(%):FLT" --column="TIME:TEXT" --column="Comand:TEXT" &> res1 &
	
lscpu | head -24 | tr -s ' ' | tr ':' '\n' | \
    yad --plug=${KEY} --tabnum=2 --text="second tab" --list --no-selection --column="Componente" --column="Descrição" &> res2 &

#aba ESPECIFICAÇÕES                                                                            
eval exec yad --plug=${KEY} --tabnum=3 --image=drive-harddisk --text="Disk\ usage" --buttons-layout=end \
    --multi-progress $(df -h | tail +2 | grep -v snap | \
    awk '{printf "--bar=\"<b>%s</b> (%s) [%s/%s]\" %s ", $6, $1, $3, $2, $5}') &> res3 &

GUI=$(yad --notebook --center --width=900 --height=650 --title="Gerenciador de processos" --text="$TXT" \
    --buttons-layout="center" --button="matar processo" --button="sair" \
	--button="Stop:bash -c 'set_update_screen 0'" 		\
	--button="Start:bash -c 'set_update_screen 1'"		\
	--button="Filter by user:bash -c 'filter_by_user'"	\
	--button="Start process:bash -c './startproc.sh'"	\
	--button="Schedule process:bash -c './schedproc.sh'"	\
	--button="Kill:0" --key=${KEY} --tab="Processos" --tab="Recursos" --tab="Especificações"
    )