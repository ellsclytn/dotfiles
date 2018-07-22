source ~/.zplug/init.zsh
source ~/.fresh/build/shell.sh

zplug install
zplug load

if [[ "$(uname)" == "Linux" ]]; then
  chsh -s /usr/bin/zsh
fi

if [[ "$(uname)" == "Darwin" ]]; then
  chsh -s /usr/local/bin/zsh
fi
