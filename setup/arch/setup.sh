sudo pacman -S base-devel

# libc++ {{✊}}
gpg --keyserver hkp://pgp.mit.edu:80 --receive-keys A2C794A986419D8A

#
# Aura
#
git clone https://aur.archlinux.org/aura-bin.git
cd aura-bin
makepkg
sudo pacman -U aura-bin-*
cd ~/.dotfiles
rm -rf aura-bin

#
# Pacman, AUR and AppImages
#
echo "Istalling packages..."
sudo aura -S $(grep -v '^#' ~/.dotfiles/setup/arch/pacman)
sudo aura -Aa $(grep -v '^#' ~/.dotfiles/setup/arch/aur)
setup/software/wire.sh
