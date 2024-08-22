#!/bin/sh

# profile startup: start
# zmodload zsh/zprof

[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
typeset -U PATH

# source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# source
plug "$HOME/.config/zsh/scripts.zsh"
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/exports.zsh"
plug "$HOME/.config/zsh/options.zsh"
plug "$HOME/.config/zsh/plugins.zsh"
plug "$HOME/.config/zsh/keymaps.zsh"

 # history
HISTFILE=~/.zsh_history

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# enable zoxide
eval "$(zoxide init zsh)"

# enable pure
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

# profile startup: end
# zprof
