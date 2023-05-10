#-------------
#-- Exports --
#-------------

fish_add_path /usr/local/git/bin
fish_add_path /usr/local/bin
fish_add_path /home/chris/Documents/AppImages
fish_add_path /home/chris/julia-1.6.7/bin
fish_add_path -p $HOME/.local/bin

#------------------------
#-- First time options --
#------------------------

# Set vi keybindings
# fish_vi_key_bindings

# Set Catppuccin Mocha
# fish_config theme save "Catppuccin Mocha"

# pnpm
set -gx PNPM_HOME "/home/chris/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end