#! /bin/bash

action=$(yad --center --width=500 --entry --title "Logout de Sistema" \
    --image=gnome-shutdown \
    --button="Switch User:2" \
    --button="gtk-ok:0" --button="gtk-close:1" \
    --text "Selecione a opção:" \
    --entry-text \
    "Power Off" "Reboot" "Suspend" "Logout")
ret=$?

[[ $ret -eq 1 ]] && exit 0

if [[ $ret -eq 2 ]]; then
    gdmflexiserver --startnew &
    exit 0
fi

case $action in
    Power*) cmd="sudo /sbin/poweroff" ;;
    Reboot*) cmd="sudo /sbin/reboot" ;;
    Suspend*) cmd="sudo /bin/sh -c 'echo disk > /sys/power/state'" ;;
    Logout*) 
    case $(wmctrl -m | grep Name) in
        *Openbox) cmd="openbox --exit" ;;
        *FVWM) cmd="FvwmCommand Quit" ;;
            *Metacity) cmd="gnome-save-session --kill" ;; 
        *) exit 1 ;;
    esac
    ;;
    *) exit 1 ;;    
esac

eval exec $cmd


#yad --center --width=500 --height=500 --title="agendar processo"
