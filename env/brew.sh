export PATH="/usr/local/bin:$PATH"

# Cask install directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Initialise rbenv for homebrew install
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

