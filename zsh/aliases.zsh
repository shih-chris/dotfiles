#-------------
#-- Aliases --
#-------------

# basic aliases
alias ls='ls -FG --color=auto'
alias vi='nvim'
alias vim='nvim'

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

# other aliases
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
alias t='sesh connect'
