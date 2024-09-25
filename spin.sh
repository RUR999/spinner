#!/bin/bash
r="\033[1;31m"
g="\033[1;32m"
c="\033[1;36m"
b="\033[1;34m"
n="\033[0m"

spin() {
    pid=$!
    tput civis
    spinner=( "█▒▒▒▒▒▒ lOADING ▒▒▒▒▒▒█" "▒█▒▒▒▒▒ LoADING ▒▒▒▒▒█▒" "▒▒█▒▒▒▒ LOaDING ▒▒▒▒█▒▒" "▒▒▒█▒▒▒ LOAdING ▒▒▒█▒▒▒" "▒▒▒▒█▒▒ LOADiNG ▒▒█▒▒▒▒" "▒▒▒▒▒█▒ LOADInG ▒█▒▒▒▒▒" "▒▒▒▒▒▒█ LOADINg █▒▒▒▒▒▒" "▒▒▒▒▒█▒ LOADInG ▒█▒▒▒▒▒" "▒▒▒▒█▒▒ LOADiNG ▒▒█▒▒▒▒" "▒▒▒█▒▒▒ LOAdING ▒▒▒█▒▒▒" "▒▒█▒▒▒▒ LOaDING ▒▒▒▒█▒▒" "▒█▒▒▒▒▒ LoADING ▒▒▒▒▒█▒" )
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
    for s in "${spinner[@]}";do
    tput sc
    echo -en "\r${c}[ ${g}${s}${c} ]${n}\r"
    sleep 0.20
    done
   	done
    tput el
    tput rc
    tput cnorm
}
