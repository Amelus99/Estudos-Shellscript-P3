KEY=123
controle=1
while [ "$controle" == 1 ]; do
    ps -eo "%p;%y;%U;%C;%x;%c" | tr -d " " | grep -E ^[[:digit:]] | tr ";" "\n"
    sleep 10s
    done | yad --plug=${KEY} --list					\
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
    --buttons-layout="center" \
    --button="filtar por usuario" \
    --button="matar processo: bash -c './sub-matar.sh'" \
    --button="Agendar processo:bash -c './sub-agendar.sh'"	\
    --button="Start process:bash -c './startproc.sh'"	\
    --button="sair"     \
	--key=${KEY} --tab="Processos" --tab="Recursos" --tab="Especificações"
    )