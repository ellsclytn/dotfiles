#!/bin/bash
#
# Software I use on Ubuntu Server
#

# Install an application via apt-get with minimal output.
# Gracefully fails if the application already exists.
apt-install () {
  if ! command -v $1 >/dev/null 2>&1; then
    echo "Installing $1..."
    sudo apt-get install $1 -y >> ~/dotfiles.log
  else
    echo "$1 is already installed"
  fi
}

# Add Neovim Repository
setup-neovim () {
  echo "Configuring Neovim repository"
  sudo apt-add-repository ppa:neovim-ppa/stable -y >> ~/dotfiles.log
}

declare -a apts=(
  git
  htop
  neovim
  ranger
  ripgrep
  zsh
)

# Essentials required for installing the rest of the software
declare -a essentials=(
  apt-transport-https
  ca-certificates
  curl
  jq
  software-properties-common
)

# Installs Docker and Docker Compose
install-docker () {
  echo "Installing Docker..."
  # It recommends it ¯\_(ツ)_/¯
  sudo apt-get --fix-broken install -y >> ~/dotfiles.log

  # Docker
  sh -c "$(curl -sSL https://get.docker.com/)"

  # Docker Compose
  COMPOSE_VERSION=$(github_release "docker/compose")
  echo "Installing docker-compose $COMPOSE_VERSION"
  sudo curl -sL https://github.com/docker/compose/releases/download/$COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
}

# Installs Exa
install-exa () {
  EXA_VERSION=$(github_release "ogham/exa" | cut -c 2-) # Remove the "v"
  echo "Installing exa $EXA_VERSION"
  wget -q -O exa.zip https://github.com/ogham/exa/releases/download/v$EXA_VERSION/exa-linux-x86_64-$EXA_VERSION.zip
  unzip -qq exa.zip
  sudo mv exa-linux-x86_64 /usr/local/bin/exa
  sudo chmod +x /usr/local/bin/exa
  rm exa.zip
}

# Clones fzf to the right place. The rest of the configuration is done with fresh
install-fzf () {
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
}

# Installs ripgrep
install-ripgrep () {
  RIPGREP_VERSION=$(github_release "BurntSushi/ripgrep")
  echo "Installing ripgrep $RIPGREP_VERSION"
  wget -q -O ripgrep.deb https://github.com/BurntSushi/ripgrep/releases/download/$RIPGREP_VERSION/ripgrep_$RIPGREP_VERSION\_amd64.deb
  sudo dpkg -i ripgrep.deb >> ~/dotfiles.log
  rm ripgrep.deb
}

# Do it!
for app in "${essentials[@]}"; do
  apt-install $app
done

setup-neovim

sudo apt-get update -y >> ~/.dotfiles.log

install-docker
install-exa
install-fzf
install-ripgrep

for app in "${apts[@]}"; do
  apt-install $app
done

echo "Making sure everything is updated"
sudo apt-get upgrade -y >> ~/.dotfiles.log

sudo chown -R ellis:ellis /usr/local/bin
