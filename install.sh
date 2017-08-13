#!/bin/sh

is_linux () {
  if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    return 0
  else
    return 1
  fi
}

is_mac () {
  if [ "$(uname)" == "Darwin" ]; then
    return 0
  else
    return 1
  fi
}

if is_linux; then
  . linux-software.sh
fi

if is_mac; then
  . software.sh
  . defaults.sh
  . dev.sh

  zsh finalize.zsh

  #SSH
  echo "SSH Time!"
  ssh-keygen
  pbcopy < ~/.ssh/id_rsa.pub
  echo "Your key is in the clipboard"

  echo "Some software may require GUI installation. Once that is done, run brew cleanup."
fi
