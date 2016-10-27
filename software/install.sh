#!/bin/bash

. homebrew.sh

# Linters
npm i eslint -g

#Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/

#Fresh
bash -c "`curl -sL get.freshshell.com`"
rm ~/.freshrc
ln -s ~/.freshrc ~/.dotfiles/freshrc
source ~/.fresh/build/shell.sh

# Oh My ZSH
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh > /tmp/zsh-install.log
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

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

