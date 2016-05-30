#!/bin/sh

#Dev structure
echo "Making your dev directory..."
mkdir "~/Documents/Development"

#Fonts
echo "Installing fonts..."
wget -q https://github.com/powerline/fonts/raw/master/Hack/Hack-Bold.ttf -P ~/Library/Fonts/
wget -q https://github.com/powerline/fonts/raw/master/Hack/Hack-BoldItalic.ttf -P ~/Library/Fonts/
wget -q https://github.com/powerline/fonts/raw/master/Hack/Hack-Italic.ttf -P ~/Library/Fonts/
wget -q https://github.com/powerline/fonts/raw/master/Hack/Hack-Regular.ttf -P ~/Library/Fonts/
curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | sh
