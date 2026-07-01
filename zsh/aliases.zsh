#-------------
#-- Aliases --
#-------------

# basic aliases
# alias ls='ls -FG --color=auto'
alias vi='NVIM_APPNAME="nvim_cshih" nvim'
alias vim='NVIM_APPNAME="nvim_cshih" nvim'
alias nvim_cshih='NVIM_APPNAME="nvim_cshih" nvim'
alias nvim_lazy='NVIM_APPNAME="nvim_lazy" nvim'

# git aliases
alias gg='lazygit'
alias gs='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias oops='git reset --soft HEAD^'

# data aliases
alias python='python3'
alias cclip='xclip -selection clipboard'

# llm aliases
alias cc='claude code'
alias cx='codex'
alias oc='opencode'
alias pi='pi --model anthropic/claude-opus-4-6:xhigh'

# other aliases
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
alias t='sesh connect'
alias draw='docker run --rm -dit --name excalidraw -p 5050:80 excalidraw/excalidraw:latest'
