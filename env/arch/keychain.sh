# Get keychain & GPG running in Linux
eval `keychain --eval --noask -q --agents ssh id_rsa`
export GPG_TTY=$(tty)
