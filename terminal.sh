
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

bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo -e '\e[0;49;92m> \e[1;49;36moh-my-zsh\e[0;49;92m instalado com sucesso.\e[0m'
