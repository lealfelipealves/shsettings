sed -i 's/plugins=(git)/plugins=(\n  git\n  dnf\n)/g' ~/.zshrc

sed -i 's/# alias ohmyzsh="mate ~\/.oh-my-zsh"/# alias ohmyzsh="mate ~\/.oh-my-zsh"\n\nalias nodejs=node\n\nSPACESHIP_PROMPT_ORDER=(\n  user\n  dir\n  host\n  git\n  hg\n  exec_time\n  line_sep\n  vi_mode\n  jobs\n  exit_code\n  char\n)\nSPACESHIP_USER_SHOW=always\nSPACESHIP_PROMPT_ADD_NEWLINE=false\nSPACESHIP_CHAR_SYMBOL="❯"\nSPACESHIP_CHAR_SUFFIX=" "/g' ~/.zshrc 

sed -i 's/alias nodejs=node/alias nodejs=node\n\nexport NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] \&\& printf %s "${HOME}\/.nvm" || printf %s "${XDG_CONFIG_HOME}\/nvm")"\n[ -s "$NVM_DIR\/nvm.sh" ] \&\& \\. "$NVM_DIR\/nvm.sh"/g' ~/.zshrc

git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/custom/themes/spaceship-prompt

ln -s ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="spaceship"/g' ~/.zshrc

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sed -i 's/installer chunk/installer chunk\n\nzplugin light zdharma\/fast-syntax-highlighting\nzplugin light zsh-users\/zsh-autosuggestions\nzplugin light zsh-users\/zsh-completions/g' ~/.zshrc

cat loadnvmrc.txt >> ~/.zshrc

# https://github.com/dijitalmunky/nvm-auto

zsh --login 