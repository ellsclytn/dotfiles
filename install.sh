#!/bin/bash

# Get version of latest release of a GitHub repository
github-release () {
  curl -s "https://api.github.com/repos/$1/releases/latest" | jq -r '.tag_name'
}

export -f github-release
if [[ "$(uname)" == "Linux" ]]; then
  ./setup/ubuntu.sh
fi

if [[ "$(uname)" == "Darwin" ]]; then
  ./setup/macos/software.sh
  ./setup/macos/defaults.sh
fi

. software.sh

zsh finalize.zsh

#SSH
echo "SSH Time!"
ssh-keygen
