processo=$(yad --title="Matar processo" --image=dialog-error --center --form --text="\nDigite o PID do processo que deseja matar:\n" --field="PID: " --button="OK:0" --button="Cancelar:1" --width=600)
kill ${processo:0:-1}

#yad --center --width=500 --height=500 --title="matar processo"