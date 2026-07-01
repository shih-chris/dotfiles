#!/bin/sh

# profile startup: start
# zmodload zsh/zprof

[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

typeset -U PATH

# source
source "$HOME/.config/zsh/scripts.zsh"
source "$HOME/.config/zsh/aliases.zsh"
source "$HOME/.config/zsh/exports.zsh"
source "$HOME/.config/zsh/private_exports.zsh"
source "$HOME/.config/zsh/options.zsh"
source "$HOME/.config/zsh/keymaps.zsh"
source "$HOME/.config/zsh/plugins.zsh"

 # history
HISTFILE=~/.zsh_history

# enable zoxide
eval "$(zoxide init zsh)"

# enable pure
# fpath+=("$(brew --prefix)/share/zsh/site-functions")
# autoload -U promptinit; promptinit
# prompt pure

# Style Prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%b) '

setopt prompt_subst
PROMPT='%F{blue}%1~%f %B%F{magenta}${vcs_info_msg_0_}%f%b'

# Prevent Ctrl-D from closing the shell or triggering completion
setopt IGNORE_EOF
bindkey -r '^D'

# NVM (lazy-loaded)
# Stub functions — first call loads real nvm, then re-runs the command
_load_nvm() {
  unfunction nvm node npm npx 2>/dev/null
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
}
for cmd in nvm node npm npx; do
  eval "${cmd}() { _load_nvm; ${cmd} \"\$@\" }"
done
#
# profile startup: end
# zprof
