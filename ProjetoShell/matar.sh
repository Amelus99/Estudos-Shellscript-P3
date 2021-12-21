processo=$(yad --title="Matar processo" --center --form --text="Digite o PID do processo que deseja matar:" --field="PID: " --button="OK:0" --button="Cancelar:1" --width=600)
kill ${processo:0:-1}

#yad --center --width=500 --height=500 --title="matar processo"