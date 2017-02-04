# Support oh-my-zsh plugins
zplug "plugins/git",   from:oh-my-zsh

# NVM
zplug "lukechilds/zsh-nvm"

# Pure
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug load
