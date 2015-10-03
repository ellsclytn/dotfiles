#!/bin/sh

#Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Brews
brew tap caskroom/cask
brew install brew-cask
brew install git
brew install node
brew install rbenv
brew install ruby-build
brew install wget

#Casks
echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile
source ~/.bash_profile

brew cask install adobe-creative-cloud
brew cask install alfred
brew cask install android-file-transfer
brew cask install appcleaner
brew cask install bittorrent-sync
brew cask install filezilla
brew cask install firefox
brew cask install flux
brew cask install fritzing
brew cask install google-chrome
brew cask install google-hangouts
brew cask install iterm2
brew cask install java
brew cask install kodi
brew cask install macdown
brew cask install minecraft
brew cask install openemu
brew cask install openttd
brew cask install sequel-pro
brew cask install skype
brew cask install spotify
brew cask install steam
brew cask install teamspeak-client
brew cask install the-unarchiver
brew cask install transmission
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc
brew cask install xld

#Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/
echo 'alias composer="php /usr/local/bin/composer.phar"' >> ~/.bash_profile

#Ruby
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

rbenv install --list
echo "Type the desired Ruby version"
read rver
rbenv install "$rver"

sudo gem install sass
sudo npm install sails -g

#Vagrant
echo "alias vagrant=/opt/vagrant/bin/vagrant" >> ~/.bash_profile
source ~/.bash_profile
vagrant plugin install vagrant-hostsupdater