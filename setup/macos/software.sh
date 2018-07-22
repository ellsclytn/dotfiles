#!/bin/bash

#Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew bundle

echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
