source ~/.zplug/init.zsh

# Support oh-my-zsh plugins
zplug "plugins/git",   from:oh-my-zsh

# NVM
zplug "lukechilds/zsh-nvm"

zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
zplug "mafredri/zsh-async", from:github
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "zdharma/fast-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "djui/alias-tips"
zplug filipekiss/zemojify, as:"command", rename-to:emojify
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

zplug load
