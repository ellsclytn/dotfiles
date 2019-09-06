source ~/.fresh/build/shell.sh

if ! [[ $OS == "macos" ]]; then
  chsh -s /usr/bin/zsh
fi

if [[ $OS == "macos" ]]; then
  chsh -s /usr/local/bin/zsh
fi
