#!/bin/sh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
typeset -U PATH

# source
plug "$HOME/.config/zsh/scripts.zsh"
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/exports.zsh"
plug "$HOME/.config/zsh/options.zsh"
plug "$HOME/.config/zsh/plugins.zsh"
plug "$HOME/.config/zsh/keymaps.zsh"

 # history
HISTFILE=~/.zsh_history
