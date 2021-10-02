#!/bin/bash
echo -e '\e[7;103;30m ======================== \e[0m'
echo -e '\e[7;103;30m   Pacote de instalação   \e[0m'
echo -e '\e[7;103;30m ======================== \e[0m'
echo -e '\e[1;49;93m> Digite seu email:\e[0m'
read email
echo -e '\e[1;49;93m> Digite seu nome:\e[0m'
read name
echo -e '\e[7;103;30m ======================== \e[0m'

#sudo apt update
echo -e '\e[0;49;92m> \e[1;49;36mapt\e[0;49;92m update.\e[0m'

#sudo apt upgrade
echo -e '\e[0;49;92m> \e[1;49;36mapt\e[0;49;92m upgrade.\e[0m'

#sudo apt install -y zsh
echo -e '\e[0;49;92m> \e[1;49;36mzsh\e[0;49;92m instalado com sucesso.\e[0m'

#sudo apt install -y git
echo -e '\e[0;49;92m> \e[1;49;36mgit\e[0;49;92m instalado com sucesso.\e[0m'

#git config --global user.email "$email"
#git config --global user.name "$name"
echo -e '\e[0;49;92m> \e[1;49;36mgit config\e[0;49;92m configurado globalmente com sucesso.\e[0m'

#ssh-keygen -t rsa -b 4096 -C "$email"
echo -e '\e[0;49;92m> \e[1;49;36mssh-keygen\e[0;49;92m gerada com sucesso.\e[0m'

#sudo apt install -y software-properties-common
echo -e '\e[0;49;92m> \e[1;49;36msoftware-properties-common\e[0;49;92m instalado com sucesso.\e[0m'

#sudo apt install -y curl
echo -e '\e[0;49;92m> \e[1;49;36mcURL\e[0;49;92m instalado com sucesso.\e[0m'

#sudo apt install -y xclip
echo -e '\e[0;49;92m> \e[1;49;36mxclip\e[0;49;92m instalado com sucesso.\e[0m'

#sudo apt install -y build-essential
echo -e '\e[0;49;92m> \e[1;49;36mbuild-essential\e[0;49;92m instalado com sucesso.\e[0m'

#sudo apt install -y libssl-dev
echo -e '\e[0;49;92m> \e[1;49;36mlibssl-dev\e[0;49;92m instalado com sucesso.\e[0m'

#sudo apt install -y net-tools
echo -e '\e[0;49;92m> \e[1;49;36mnet-tools\e[0;49;92m instalado com sucesso.\e[0m'

#sudo apt install -y htop
echo -e '\e[0;49;92m> \e[1;49;36mhtop\e[0;49;92m instalado com sucesso.\e[0m'

#sudo apt install -y snapd
echo -e '\e[0;49;92m> \e[1;49;36msnapd\e[0;49;92m instalado com sucesso.\e[0m'

#Acesse o site https://github.com/nvm-sh/nvm para ver a ultima versão 
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
echo -e '\e[0;49;92m> \e[1;49;36mnvm v0.38.0\e[0;49;92m instalado com sucesso.\e[0m'

#Acesse o site https://nodejs.org/en/ para ver a ultima versão 
#VERSAO_NODE="14.18.0"
#nvm install VERSAO_NODE
#nvm alias default VERSAO_NODE
#nvm use VERSAO_NODE
#node -v && npm -v
#npm install --global yarn && yarn -v
echo -e '\e[0;49;92m> \e[1;49;36mnode, npm, yarn\e[0;49;92m instalado com sucesso.\e[0m'

#sudo snap install dbeaver-ce
echo -e '\e[0;49;92m> \e[1;49;36mdbeaver-ce\e[0;49;92m instalado com sucesso.\e[0m'

#sudo snap install insomnia
echo -e '\e[0;49;92m> \e[1;49;36minsomnia\e[0;49;92m instalado com sucesso.\e[0m'

#sudo snap install postman
echo -e '\e[0;49;92m> \e[1;49;36mpostman\e[0;49;92m instalado com sucesso.\e[0m'

#sudo snap install code --classic
echo -e '\e[0;49;92m> \e[1;49;36mvisual code\e[0;49;92m instalado com sucesso.\e[0m'

#sudo snap install slack --classic
echo -e '\e[0;49;92m> \e[1;49;36mslack\e[0;49;92m instalado com sucesso.\e[0m'

#sudo snap install discord
echo -e '\e[0;49;92m> \e[1;49;36mdiscord\e[0;49;92m instalado com sucesso.\e[0m'


#sudo apt install fonts-firacode
#fc-cache -f
#fc-list | grep FiraCode
echo -e '\e[0;49;92m> \e[1;49;36mfiracode\e[0;49;92m instalado com sucesso.\e[0m'

#sudo apt install -y terminator
#git clone https://github.com/getomni/terminator.git
#mkdir ~/.config/terminator/
#cp -u terminator/config ~/.config/terminator/config
#rm -rf terminator
echo -e '\e[0;49;92m> \e[1;49;36mterminator\e[0;49;92m instalado com sucesso.\e[0m'

#sudo apt install -y dconf-cli
#git clone https://github.com/dracula/gnome-terminal
#bash gnome-terminal/install.sh
#rm -rf gnome-terminal
echo -e '\e[0;49;92m> \e[1;49;36mdracula\e[0;49;92m instalado com sucesso.\e[0m'

