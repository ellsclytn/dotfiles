#!/bin/bash

# Nvm
NVM_VERSION=$(github_release nvm-sh/nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node
npm install yarn -g

# Zplugin
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

# Vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Gomplate (done via Brew on macOS)
if ! [[ "$(uname)" == "Darwin" ]]; then
  GOMPLATE_VERSION=$(github_release hairyhenderson/gomplate)
  sudo curl -sL https://github.com/hairyhenderson/gomplate/releases/download/$GOMPLATE_VERSION/gomplate_linux-amd64-slim -o /usr/local/bin/gomplate
  sudo chmod +x /usr/local/bin/gomplate
fi

# Fresh
rm ~/.zshrc
bash -c "`curl -sL get.freshshell.com`"
rm ~/.freshrc
ln -s ~/.dotfiles/freshrc ~/.freshrc
