vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

require("config.keymaps")
require("config.options")
require("config.autocmds")
require("core.lazy-plugins")
require("core.lsp")

-- set colorscheme
vim.cmd.colorscheme("catppuccin")
