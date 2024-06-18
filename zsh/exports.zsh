#-------------
#-- Exports --
#-------------

# PATH exports
export PATH="$PATH:/usr/local/git/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/home/chris/Documents/AppImages"
export PATH="$PATH:/home/chris/julia-1.9.0/bin"
export PATH="$HOME/.local/bin":$PATH
export PATH=$HOME/.tmux/plugins/t-smart-tmux-session-manager/bin:$PATH # ~/.tmux/plugins
export PATH=$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin:$PATH # ~/.config/tmux/plugins
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Other exports
export LANG=en_US.UTF-8
export EDITOR="nvim"

# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/chris/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/chris/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/chris/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/chris/google-cloud-sdk/completion.zsh.inc'; fi
