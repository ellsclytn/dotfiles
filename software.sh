#!/bin/bash

#Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew bundle

# Mac App Store
mas signin jirble2@gmail.com
mas install $(sed -e 's/#.*//' Masfile)

# Nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node
npm install yarn -g

# Linters
yarn global add eslint
yarn global add standard

#Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/

#Fresh
bash -c "`curl -sL get.freshshell.com`"
rm ~/.freshrc
ln -s ~/.dotfiles/freshrc ~/.freshrc

# ZSH
curl -sL zplug.sh/installer | zsh
echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells

#Ruby
eval "$(rbenv init -)"

rbenv install --list
echo "Type the desired Ruby version"
read rver
rbenv install "$rver"

#Vagrant
vagrant plugin install vagrant-hostsupdater

#Vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
