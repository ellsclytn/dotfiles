#!/bin/bash

#Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew bundle

