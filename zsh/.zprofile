eval "$(/opt/homebrew/bin/brew shellenv)"

# orbstack
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# PATH
export PATH="$PATH:/usr/local/git/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/Users/chris/go/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.tmux/plugins/t-smart-tmux-session-manager/bin:$PATH"
export PATH="$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin:$PATH"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
PATH="$PYENV_ROOT/shims:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/alias/default" ] && PATH="$NVM_DIR/versions/node/$(cat "$NVM_DIR/alias/default")/bin:$PATH"

# Environment
export LANG=en_US.UTF-8
export EDITOR="nvim"
export K9S_CONFIG_DIR="$HOME/.config/k9s"
export PI_CODING_AGENT_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/pi"
export PI_CODING_AGENT_SESSION_DIR="$PI_CODING_AGENT_DIR/sessions"
export GOOGLE_CLOUD_PROJECT="grafanalabs-global"

# FZF
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#c6a0f6 \
--color=marker:#b7bdf8,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--multi \
--gutter ' '"

# Google Cloud SDK
if [ -f '/Users/chris/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/chris/google-cloud-sdk/path.zsh.inc'; fi
