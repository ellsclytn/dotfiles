#!/bin/sh

. software.sh
. defaults.sh
. dev.sh

# Git files
cp git/.gitconfig ~
cp git/.gitignore_global ~

#SSH
echo "SSH Time!"
ssh-keygen
pbcopy < ~/.ssh/id_rsa.pub
echo "Your key is in the clipboard"

echo "Some software may require manual installation. Once that is done, run brew cleanup."
