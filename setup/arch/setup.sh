sudo pacman -S --noconfirm base-devel jq ansible

# libc++ {{✊}}
gpg --keyserver hkp://pgp.mit.edu:80 --receive-keys A2C794A986419D8A

#
# Aura
#
git clone https://aur.archlinux.org/aura-bin.git
cd aura-bin
makepkg
sudo pacman -U --noconfirm aura-bin-*
cd ~/.dotfiles
rm -rf aura-bin

sudo -E ansible-playbook ansible/playbook.yml

echo "Istalling AUR packages..."
sudo aura -Aa $(grep -v '^#' ~/.dotfiles/setup/arch/aur)
