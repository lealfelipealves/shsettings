#!/bin/bash
echo -e '\e[7;103;30m ======================== \e[0m'
echo -e '\e[7;103;30m   Pacote de instalação   \e[0m'
echo -e '\e[7;103;30m ======================== \e[0m'

sudo apt update
echo -e '\e[0;49;92m> \e[1;49;36mapt\e[0;49;92m update.\e[0m'

sudo apt upgrade
echo -e '\e[0;49;92m> \e[1;49;36mapt\e[0;49;92m upgrade.\e[0m'

sudo apt install -y zsh
echo -e '\e[0;49;92m> \e[1;49;36mzsh\e[0;49;92m instalado com sucesso.\e[0m'

zsh --login -c 'bash programs.sh'