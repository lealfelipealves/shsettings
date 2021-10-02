#!/bin/bash
echo -e '\e[7;103;30m ====================================== \e[0m'
echo -e '\e[7;103;30m   Instalação e Configuração do Samba   \e[0m'
echo -e '\e[7;103;30m ====================================== \e[0m'

# Fonte: https://linuxconfig.org/how-to-configure-samba-server-share-on-ubuntu-20-04-focal-fossa-linux

# Step 1
sudo apt install -y tasksel
sudo tasksel install samba-server
echo -e '\e[0;49;92m> \e[1;49;36mtasksel e samba-server\e[0;49;92m instalado com sucesso.\e[0m'

# Step 2
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf_backup
sudo bash -c 'grep -v -E "^#|^;" /etc/samba/smb.conf_backup | grep . > /etc/samba/smb.conf'
echo -e '\e[0;49;92m> \e[0;49;92m Backup do arquivo /etc/samba/smb.conf_backup.\e[0m'

# Step 3
sudo smbpasswd -a $USER
echo -e '\e[0;49;92m> \e[0;49;92m Senha definida.\e[0m'

sudo chmod 777 /etc/samba/smb.conf
sudo echo '[homes]
  comment = Home Directories
  browseable = yes
  read only = no
  create mask = 0700
  directory mask = 0700
  valid users = %S' >> /etc/samba/smb.conf
sudo chmod 644 /etc/samba/smb.conf
echo -e '\e[0;49;92m> \e[0;49;92m Criação da regra de homes /etc/samba/smb.conf.\e[0m'

#sudo nano /etc/samba/smb.conf
#[homes]
#  comment = Home Directories
#  browseable = yes
#  read only = no
#  create mask = 0700
#  directory mask = 0700
#  valid users = %S

# Step 5 - Optionally
#sudo mkdir /var/samba
#sudo chmod 777 /var/samba/
# [public]
#  comment = public anonymous access
#  path = /var/samba/
#  browsable =yes
#  create mask = 0660
#  directory mask = 0771
#  writable = yes
#  guest ok = yes

# Step 7
sudo systemctl restart smbd
echo -e '\e[0;49;92m> \e[0;49;92m Reiniciado o serviço de samba.\e[0m'

ip addr | sed -r ':a;N;$!ba;s/\n\s/ /g' | sed -r -n -e 's/^([0-9]+):\s(\w+).*(link\/(\w+))\s[a-f0-9:.]{,17}\sbrd\s[a-f0-9:.]{,17}\s*(inet\s([0-9]{1,3}(\.[0-9]{1,3}){3})).*/IFACE \2 \6 \4/p' -e 's/^([0-9]+):\s(\w+).*(link\/(\w+))\s[a-f0-9:.]{,17}\sbrd\s[a-f0-9:.]{,17}.*/IFACE \2 0.0.0.0 \4/p'

# Step 8 - Optionally
#touch /var/samba/public-share 
#touch /home/$USER/home-share
