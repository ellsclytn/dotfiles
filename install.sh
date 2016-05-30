#!/bin/sh

. software.sh
. defaults.sh
. dev.sh
. zsh/install.sh

cp git/.gitconfig ~
cp git/.gitignore_global ~
cp zsh/.zshrc ~
cp iterm/com.googlecode.iterm2.plist ~/Library/Preferences/

#SSH
echo "SSH Time!"
ssh-keygen
pbcopy < ~/.ssh/id_rsa.pub
echo "Your key is in the clipboard"

echo "Some software may require manual installation. Once that is done, run brew cleanup."
