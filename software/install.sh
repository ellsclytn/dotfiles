#!/bin/bash

. homebrew.sh

# Mac App Store
mas signin jirble2@gmail.com
mas install $(sed -e 's/#.*//' software/Masfile)

# Nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
nvm install node

# Linters
yarn global add eslint
yarn global add standard

#Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/

#Fresh
bash -c "`curl -sL get.freshshell.com`"
rm ~/.freshrc
ln -s ~/.freshrc ~/.dotfiles/freshrc
source ~/.fresh/build/shell.sh

# ZSH
curl -sL zplug.sh/installer | zsh
chsh -s /usr/local/bin/zsh

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
