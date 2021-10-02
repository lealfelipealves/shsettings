#!/bin/bash
echo -e '\e[7;103;30m =================================== \e[0m'
echo -e '\e[7;103;30m   Instalação nvm, node, npm, yarn   \e[0m'
echo -e '\e[7;103;30m =================================== \e[0m'

#Acesse o site https://github.com/nvm-sh/nvm para ver a ultima versão 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
echo -e '\e[0;49;92m> \e[1;49;36mnvm v0.38.0\e[0;49;92m instalado com sucesso.\e[0m'

#Acesse o site https://nodejs.org/en/ para ver a ultima versão 
VERSAO_NODE="14.18.0"
nvm install VERSAO_NODE
nvm alias default VERSAO_NODE
nvm use VERSAO_NODE
node -v && npm -v
npm install --global yarn && yarn -v
echo -e '\e[0;49;92m> \e[1;49;36mnode, npm, yarn\e[0;49;92m instalado com sucesso.\e[0m'