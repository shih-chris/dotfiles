#!/bin/sh

# profile startup: start
# zmodload zsh/zprof

[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

typeset -U PATH

# source
source "$HOME/.config/zsh/scripts.zsh"
source "$HOME/.config/zsh/aliases.zsh"
source "$HOME/.config/zsh/exports.zsh"
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
# profile startup: end
# zprof
