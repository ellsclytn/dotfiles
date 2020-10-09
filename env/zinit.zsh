source "${HOME}/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit ice silent wait'!0' blockf
zinit light zsh-users/zsh-completions

zinit ice silent wait'!0' atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions

zinit ice silent wait'!0'
zinit snippet https://github.com/gantsign/zsh-plugins/blob/master/ctop/_ctop

zinit ice silent wait'!0' atinit"zpcompinit; zpcdreplay"
zinit light zdharma/fast-syntax-highlighting

zinit ice silent wait'!0'
zinit light djui/alias-tips

zinit ice silent wait'!0'
zinit light lukechilds/zsh-nvm

zinit ice silent wait'!0'
zinit light lukechilds/zsh-better-npm-completion

zinit snippet OMZ::plugins/git/git.plugin.zsh
