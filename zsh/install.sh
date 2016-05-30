#!/bin/sh
#
# Install oh-my-zsh
echo "Installing ZSH & Oh My ZSH..."
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh > /tmp/zsh-install.log
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
