vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

require("config.keymaps")
require("config.options")
require("config.autocmds")
require("config.lazy-plugins")

-- set colorscheme
vim.cmd.colorscheme("catppuccin")
