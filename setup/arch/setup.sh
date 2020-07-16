sudo pacman -S --noconfirm base-devel jq ansible

# libc++ {{✊}}
gpg --keyserver hkp://keyserver.ubuntu.com:80 --receive-keys A2C794A986419D8A

#
# Aura
#
git clone https://aur.archlinux.org/aura-bin.git /tmp/aura-bin
cd /tmp/aura-bin
makepkg
sudo pacman -U --noconfirm /tmp/aura-bin/aura-bin-*
cd ~/.dotfiles

sudo -E ansible-playbook ansible/playbook.yml

echo "Istalling AUR packages..."
sudo aura -Aa $(grep -v '^#' ~/.dotfiles/setup/arch/aur)
