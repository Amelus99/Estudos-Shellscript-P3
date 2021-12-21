iniciar=$(yad --title="Novo processo" --center --form --field="Processo desejado" --button="OK:0" --button="Cancelar:1" --width=300)
${iniciar:0:-1}
