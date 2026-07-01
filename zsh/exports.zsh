#-------------
#-- Exports --
#-------------
# Environment variables and PATH are set in .zprofile.
# This file contains interactive-shell setup that depends on them.

# Lazy-load pyenv shell integration
pyenv() {
  eval "$(command pyenv init -)"
  pyenv "$@"
}

# Google Cloud SDK completions
if [ -f '/Users/chris/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/chris/google-cloud-sdk/completion.zsh.inc'; fi
