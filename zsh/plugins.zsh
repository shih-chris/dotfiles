#-----------------
#-- Zap plugins --
#-----------------

# Plugins

# plugins
plug "esc/conda-zsh-completion"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "zap-zsh/zap-prompt"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"


# #--------------
# #-- Anaconda --
# #--------------

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/chris/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/chris/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/chris/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/chris/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<


#------------
#-- Gcloud --
#------------

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/chris/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/chris/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/chris/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/chris/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

