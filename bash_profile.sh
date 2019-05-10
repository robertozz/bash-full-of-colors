#!/usr/bin/env bash

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

mesg n

# run inxi information tool
if [ -x "`which inxi 2>&1`" ]; then
    inxi -IpRS -v0 -c5
fi

figlet -ct -f roman $HOSTNAME
echo ""
echo -e "${BYellow}Qui è già impostata una versione base di Ubuntu con installato e configurato:${Color_Off}"
echo " - Indirizzo IP impostato da router con il MAC"
echo " - OpenSSH"
echo " - IPTables (https://wiki.ubuntu-it.org/Sicurezza/Iptables)"
echo " - Ufw attivo"
echo " - Fail2Ban"
echo ""
echo -e "${BYellow}Se devi utilizzarlo per un nuovo server apporta le modifiche in${Color_Off}"
echo " - /etc/hosname"
echo " - le regole di IPTables e Ufw"
