#!/bin/bash

export INITIAL_SETUP=1

# Get version of latest release of a GitHub repository
github-release () {
  curl -s "https://api.github.com/repos/$1/releases/latest" | jq -r '.tag_name'
}

export -f github-release

if [ -x "$(command -v pacman)" ]; then
  localectl set-locale LANG=en_AU.UTF-8
  export LANG=en_AU.UTF-8
  ./setup/arch/setup.sh
fi

if [ -x "$(command -v apt-get)" ]; then
  ./setup/ubuntu.sh
fi

if [[ "$(uname)" == "Darwin" ]]; then
  ./setup/macos/software.sh
  ./setup/macos/defaults.sh
fi

. software.sh

zsh finalize.zsh
