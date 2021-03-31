#!/bin/bash
sudo pacman -S --noconfirm base-devel jq ansible

# libc++ {{✊}}
gpg --keyserver hkp://keyserver.ubuntu.com:80 --receive-keys A2C794A986419D8A

#
# Aura
#
git clone https://aur.archlinux.org/aura-bin.git /tmp/aura-bin
cd /tmp/aura-bin
makepkg
sudo pacman -U --noconfirm /tmp/aura-bin/*.pkg.tar.zst
cd -

ansible-playbook ansible/playbook.yml -K

rustup install stable
rustup default stable

echo "Istalling AUR packages..."
sudo aura -Aa $(grep -v '^#' ~/.dotfiles/setup/aur)

# Nvm
NVM_VERSION=$(github_release nvm-sh/nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node
npm install yarn -g

# Vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# dot-templater
cargo install --git https://github.com/kesslern/dot-templater.git

# Fresh
rm ~/.zshrc
bash -c "`curl -sL get.freshshell.com`"
rm ~/.freshrc
ln -s ~/.dotfiles/freshrc ~/.freshrc

nvim +PlugInstall +qall
