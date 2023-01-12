#-------------
#-- Aliases --
#-------------

# basic aliases
export EDITOR='lvim'
alias ls='ls -FG --color=auto'
alias vi='lvim'
alias vim='lvim'

# git aliases
alias gs='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias oops='git reset --soft HEAD^'

# data aliases
alias python='python3'
alias cclip='xclip -selection clipboard'

alias run_docker_gpu='docker run -it --gpus all --rm -p 8888:8888 -v /home/chris/project:/home -w /home -u $(id -u):$(id -g) tensorflow bash'
alias source_env_dbt='source /home/chris/project/dbt/.venv/bin/activate'
alias run_zoom='zoom --disable-gpu-sandbox'

