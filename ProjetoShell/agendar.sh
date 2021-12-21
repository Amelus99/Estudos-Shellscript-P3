#!/bin/bash

agendar=$( yad --center --width=500 --height=300 --image=alarm-symbolic --form --title='Agendar processo' --text="\nInsira os dados para agendamento:\n" --field='comando:'TEXT --field='minutos':NUM )
COMMAND=$(echo "${agendar}" | cut -d'|' -f1)
MIN=$(echo "${agendar}" | cut -d'|' -f2)
TEMPO=$(date --date "now +${MIN%%.*} min" | egrep -o '[0-9]{2}:[0-9]{2}')
at ${TEMPO} <<< ${COMMAND}