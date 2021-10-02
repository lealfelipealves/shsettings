#!/bin/bash
echo -e '\e[7;103;30m ======================================== \e[0m'
echo -e '\e[7;103;30m   Instalação e Configuração do OpenSSH   \e[0m'
echo -e '\e[7;103;30m ======================================== \e[0m'

# Fonte: https://linuxize.com/post/how-to-enable-ssh-on-ubuntu-20-04/

sudo apt update
echo -e '\e[0;49;92m> \e[1;49;36mapt\e[0;49;92m update.\e[0m'

sudo apt install openssh-server
echo -e '\e[0;49;92m> \e[1;49;36mopenssh-server\e[0;49;92m instalado com sucesso.\e[0m'

sudo systemctl restart ssh
sudo systemctl status ssh

# Abre a exeção no firewall
sudo ufw allow ssh
echo -e '\e[0;49;92m> \e[0;49;92m Aberto a exeção no firewall.\e[0m'


ip addr | sed -r ':a;N;$!ba;s/\n\s/ /g' | sed -r -n -e 's/^([0-9]+):\s(\w+).*(link\/(\w+))\s[a-f0-9:.]{,17}\sbrd\s[a-f0-9:.]{,17}\s*(inet\s([0-9]{1,3}(\.[0-9]{1,3}){3})).*/IFACE \2 \6 \4/p' -e 's/^([0-9]+):\s(\w+).*(link\/(\w+))\s[a-f0-9:.]{,17}\sbrd\s[a-f0-9:.]{,17}.*/IFACE \2 0.0.0.0 \4/p'

# Desabilita o serviço de ssh
# sudo systemctl disable --now ssh
# Reabilita o serviço de ssh
# sudo systemctl enable --now ssh

# Fonte: https://www.hostinger.com.br/tutoriais/conexao-ssh-sem-senha