#!/bin/bash

#Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# We're still in the repo root execution context, so we have to specify a path
brew bundle --file="setup/macos/Brewfile"

echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
