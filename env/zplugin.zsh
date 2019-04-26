source "${HOME}/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin ice silent wait"0" blockf
zplugin light zsh-users/zsh-completions

zplugin ice silent wait"0" atload"_zsh_autosuggest_start"
zplugin light zsh-users/zsh-autosuggestions

zplugin ice silent wait"0" atinit"zpcompinit; zpcdreplay"
zplugin light zdharma/fast-syntax-highlighting

zplugin ice silent wait"0"
zplugin light djui/alias-tips

zplugin ice silent wait"0"
zplugin light lukechilds/zsh-nvm

zplugin snippet OMZ::plugins/git/git.plugin.zsh

# CLI Emojifier ⭐
zplugin ice as"program" cp"zemojify -> emojify" pick"emojify"
zplugin light filipekiss/zemojify

# Pure Shell
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure
