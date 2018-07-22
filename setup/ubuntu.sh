#!/bin/bash

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

# Install an application via snap with minimal output.
# Gracefully fails if the application already exists.
snap-install () {
  if ! command -v $1 >/dev/null 2>&1; then
    echo "Installing $1..."
    sudo snap install $1 >> ~/dotfiles.log
  else
    echo "$1 is already installed"
  fi
}

# Add Enpass repository
setup-enpass () {
  echo "Configuring Enpass repository"
  echo "deb http://repo.sinew.in/ stable main" | sudo tee /etc/apt/sources.list.d/enpass.list
  wget -qO - https://dl.sinew.in/keys/enpass-linux.key | sudo apt-key add - > /dev/null 2>&1
}

# Add Neovim Repository
setup-neovim () {
  echo "Configuring Neovim repository"
  sudo apt-add-repository ppa:neovim-ppa/stable -y >> ~/dotfiles.log
}

# Add Papirus Repository
setup-papirus () {
  echo "Configuring Papirus repository"
  sudo add-apt-repository ppa:papirus/papirus -y >> ~/dotfiles.log
}

# Add VS Code repository and key
setup-vscode () {
  echo "Configuring VS Code repository"
  curl -s https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
  sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
  sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
}

declare -a apts=(
  asciinema
  direnv
  git
  htop
  neofetch
  neovim
  ranger
  ripgrep
  sl
  zsh
)

declare -a gui_apts=(
  arc-theme
  code
  enpass
  firefox
  fonts-firacode
  google-chrome-stable
  papirus-icon-theme
  steam
)

declare -a snaps=(
  discord
  vlc
)

# Essentials required for installing the rest of the software
declare -a essentials=(
  apt-transport-https
  ca-certificates
  curl
  jq
  software-properties-common
)

# Add Google Chrome
install-chrome () {
  echo "Installing Chrome..."
  curl -s -o chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo dpkg -i chrome.deb >> ~/dotfiles.log
  rm chrome.deb
}

# Installs Docker and Docker Compose
install-docker () {
  echo "Installing Docker..."
  # It recommends it ¯\_(ツ)_/¯
  sudo apt-get --fix-broken install -y >> ~/dotfiles.log

  # Docker
  curl -s https://www.opscode.com/chef/install.sh | sudo bash >> ~/dotfiles.log

  # Docker Compose
  COMPOSE_VERSION=$(github-release "docker/compose")
  echo "Installing docker-compose $COMPOSE_VERSION"
  sudo curl -sL https://github.com/docker/compose/releases/download/$COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
}

# Installs Exa
install-exa () {
  EXA_VERSION=$(github-release "ogham/exa" | cut -c 2-) # Remove the "v"
  echo "Installing exa $EXA_VERSION"
  wget -q -O exa.zip https://github.com/ogham/exa/releases/download/v$EXA_VERSION/exa-linux-x86_64-$EXA_VERSION.zip
  unzip -qq exa.zip
  sudo mv exa-linux-x86_64 /usr/local/bin/exa
  sudo chmod +x /usr/local/bin/exa
  rm exa.zip
}

# Installs Kitty
install-kitty () {
  echo "Installing kitty"
  curl -s https://sw.kovidgoyal.net/kitty/installer.sh | bash >> ~/dotfiles.log
  sudo ln -s ~/.local/kitty.app/bin/kitty /usr/local/bin/kitty
  sudo cp ./kitty/kitty.desktop /usr/share/applications/kitty.desktop
}

# Installs ripgrep
install-ripgrep () {
  RIPGREP_VERSION=$(github-release "BurntSushi/ripgrep")
  echo "Installing ripgrep $RIPGREP_VERSION"
  wget -q -O ripgrep.deb https://github.com/BurntSushi/ripgrep/releases/download/$RIPGREP_VERSION/ripgrep_$RIPGREP_VERSION\_amd64.deb
  sudo dpkg -i ripgrep.deb >> ~/dotfiles.log
  rm ripgrep.deb
}

# Do it!
for app in "${essentials[@]}"; do
  apt-install $app
done

setup-enpass
setup-neovim
setup-papirus
setup-vscode

sudo apt-get update -y >> ~/.dotfiles.log

install-chrome
install-docker
install-exa
install-kitty
install-ripgrep

for app in "${apts[@]}"; do
  apt-install $app
done

for app in "${gui_apts[@]}"; do
  apt-install $app
done

for app in "${snaps[@]}"; do
  snap-install $app
done

echo "Making sure everything is updated"
sudo apt-get upgrade -y >> ~/.dotfiles.log

sudo chown -R ellis:ellis /usr/local/bin

gsettings set org.gnome.desktop.interface icon-theme "Papirus"
gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"

# Kill the dock!
sudo apt-get remove gnome-shell-extension-ubuntu-dock -y >> ~/dotfiles.log
