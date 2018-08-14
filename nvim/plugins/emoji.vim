" Emoji auto-completion
set completefunc=emoji#complete
" Replace :emoji_name: into Emojis
:command Emojify %s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g

