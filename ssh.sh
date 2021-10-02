#!/bin/bash
echo -e '\e[7;103;30m ==================================== \e[0m'
echo -e '\e[7;103;30m   Instalação e Configuração do Git   \e[0m'
echo -e '\e[7;103;30m ==================================== \e[0m'

echo -e '\e[1;49;93m> Digite seu email:\e[0m'
read email
echo -e '\e[1;49;93m> Digite seu nome:\e[0m'
read name
echo -e '\e[7;103;30m ======================== \e[0m'

sudo apt update
echo -e '\e[0;49;92m> \e[1;49;36mapt\e[0;49;92m update.\e[0m'

sudo apt install -y git
echo -e '\e[0;49;92m> \e[1;49;36mgit\e[0;49;92m instalado com sucesso.\e[0m'

git config --global user.email "$email"
git config --global user.name "$name"
echo -e '\e[0;49;92m> \e[1;49;36mgit config\e[0;49;92m configurado globalmente com sucesso.\e[0m'

ssh-keygen -t rsa -b 4096 -C "$email"
echo -e '\e[0;49;92m> \e[1;49;36mssh-keygen\e[0;49;92m gerada com sucesso.\e[0m'

xclip -sel clip < ~/.ssh/id_rsa.pub
google-chrome https://github.com/settings/ssh/new