#!/bin/bash
#
# OS and User specific vars

export GPG_KEY_ID="${GPG_KEY_ID:-DEF7E66A739ACB11}"

if [[ -x "$(command -v pacman)" ]]; then
  export OS="arch"
fi
if [[ -x "$(command -v apt-get)" ]]; then
  export OS="ubuntu"
fi
