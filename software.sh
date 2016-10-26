#!/bin/sh

#Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Brews
brew install ag
brew install asciinema
brew install direnv
brew install git
brew install hub
brew install neovim/neovim/neovim
brew install node
brew install platformio
brew install rbenv
brew install ruby-build
brew install wget
brew tap caskroom/cask
brew tap caskroom/versions

#Casks
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew cask install adobe-creative-cloud
brew cask install alfred
brew cask install android-file-transfer
brew cask install appcleaner
brew cask install filezilla
brew cask install firefox
brew cask install flux
brew cask install fritzing
brew cask install google-chrome
brew cask install google-drive
brew cask install google-hangouts
brew cask install iterm2-beta
brew cask install macdown
brew cask install minecraft
brew cask install openemu
brew cask install openttd
brew cask install resilio-sync
brew cask install sequel-pro
brew cask install skype
brew cask install steam
brew cask install sublime-text
brew cask install teamspeak-client
brew cask install the-unarchiver
brew cask install transmission
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc
brew cask install whatsapp
brew cask install xld

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

