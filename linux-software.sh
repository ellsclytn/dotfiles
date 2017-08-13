#!/bin/bash

# General update
sudo apt update
sudo apt upgrade -y


# Linuxbrew
sudo apt install build-essential curl file git python-setuptools ruby

if test ! $(which brew)
then
  echo "Installing Linuxbrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$PATH"
  test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
fi

PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

#Brews

brews=(
  'archey'
  'asciinema'
  'asciiquarium'
  'cowsay'
  'direnv'
  'elixir'
  'exa'
  'fortune'
  'git'
  'hub'
  'jq'
  'neovim'
  'platformio'
  'ripgrep'
  'sl'
  'thefuck'
  'wget'
  'zsh'
)

for brew in "${brews[@]}"; do
  brew install $brew
done

# Nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node
npm install yarn -g

#Fresh
bash -c "`curl -sL get.freshshell.com`"
rm ~/.freshrc
ln -s ~/.dotfiles/freshrc ~/.freshrc

# ZSH
curl -sL zplug.sh/installer | zsh
echo "/home/linuxbrew/.linuxbrew/bin/zsh" | sudo tee -a /etc/shells

#Vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
