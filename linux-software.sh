#!/bin/bash

# General update
sudo apt update
sudo apt upgrade -y

# Essentials for compiling, etc
sudo apt install build-essential curl file git python-pip python-setuptools ruby -y

# Elixir prep
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb

install_exa() {
    START_DIR="$(pwd)"
    # https://github.com/ogham/exa/releases
    if _version_check "$(exa --version | cut -d' ' -f2)" "0.7.0"; then
        echo "$(exa --version) : $(which exa)"
        echo "  Already installed, skipping installation"; return
    fi

    sudo apt install libhttp-parser2.1 # Workaround, see exa #194

    echo -e "Downloading exa..."
    EXA_DOWNLOAD_URL="https://github.com/ogham/exa/releases/download/v0.7.0/exa-linux-x86_64-0.7.0.zip"
    EXA_BINARY_SHA1SUM="401efebfb5a0916f98ecdae7960a265f90ff1f3c"  # exa-linux-x86_64 v0.7.0
    TMP_EXA_DIR="/tmp/exa/"

    wget -nc ${EXA_DOWNLOAD_URL} -P ${TMP_EXA_DIR} || exit 1;
    cd ${TMP_EXA_DIR} && unzip -o "exa-linux-x86_64-0.7.0.zip" || exit 1;
    if [[ "$EXA_BINARY_SHA1SUM" != "$(sha1sum exa-linux-x86_64 | cut -d' ' -f1)" ]]; then
        echo -e "SHA1 checksum mismatch, aborting!"
        exit 1;
    fi
    sudo cp "exa-linux-x86_64" "/usr/local/bin/exa" || exit 1;
    echo -e "Installation of exa successful!"
    echo "$(which exa) : $(exa --version)"
    cd ${START_DIR}
    rm -rf ${TMP_EXA_DIR}
}

install_hub() {
    START_DIR="$(pwd)"
    # https://github.com/github/hub/releases
    echo -e "Downloading hub..."
    HUB_DOWNLOAD_URL="https://github.com/github/hub/releases/download/v2.2.9/hub-linux-amd64-2.2.9.tgz"
    HUB_BINARY_SHA1SUM="62b542a7ebcd8150cbe0086e51a17447629ea8f8"  # hub-linux-amd64-2.2.9/bin/hub
    TMP_HUB_DIR="/tmp/hub/"

    wget -nc ${HUB_DOWNLOAD_URL} -P ${TMP_HUB_DIR} || exit 1;
    cd ${TMP_HUB_DIR} && tar -xvzf "hub-linux-amd64-2.2.9.tgz" || exit 1;
    if [[ "$HUB_BINARY_SHA1SUM" != "$(sha1sum hub-linux-amd64-2.2.9/bin/hub | cut -d' ' -f1)" ]]; then
        echo -e "SHA1 checksum mismatch, aborting!"
        exit 1;
    fi
    sudo cp "hub-linux-amd64-2.2.9/bin/hub" "/usr/local/bin/hub" || exit 1;
    echo -e "Installation of hub successful!"
    echo "$(which hub) : $(hub --version)"
    cd ${START_DIR}
    rm -rf ${TMP_HUB_DIR}
}

install_platformio() {
  sudo pip install -U platformio
}

# PPAs
ppas=(
  'ytvwld/asciiquarium'
  'neovim-ppa/stable'
  'x4121/ripgrep'
)

# Apt packages
apts=(
  'asciinema'
  'asciiquarium'
  'cowsay'
  'direnv'
  'esl-erlang'
  'elixir'
  'fortune'
  'git'
  'jq'
  'neovim'
  'ripgrep'
  'sl'
  'zsh'
)

for ppa in "${ppas[@]}"; do
  sudo add-apt-repository ppa:$ppa -y
done

for apt in "${apts[@]}"; do
  sudo apt install $apt -y
done

ME=$("whoami")
sudo chown ${ME} /usr/local/bin

install_exa
install_hub
install_platformio

# Nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node
npm install yarn -g

#Fresh
bash -c "`curl -sL get.freshshell.com`"
rm ~/.freshrc
ln -s ~/.dotfiles/freshrc ~/.freshrc

# ZSH
chsh -s /usr/bin/zsh
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

#Vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
