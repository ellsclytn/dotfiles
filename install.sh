#!/bin/sh

. software/install.sh
. defaults.sh
. dev.sh
. zsh/install.sh

fresh

#SSH
echo "SSH Time!"
ssh-keygen
pbcopy < ~/.ssh/id_rsa.pub
echo "Your key is in the clipboard"

echo "Some software may require manual installation. Once that is done, run brew cleanup."
