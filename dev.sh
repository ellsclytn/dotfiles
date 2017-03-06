#!/bin/sh

#Fonts
echo "Installing fonts..."
git clone https://github.com/powerline/fonts.git
. fonts/install.sh
rm -rf fonts
curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | sh
