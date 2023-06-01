-----------------------------
-- Source individual files --
-----------------------------

-- Remap space as leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

reload 'user.additional_plugins'
reload 'user.options'
reload 'user.keymaps'

-- LVIM Core plugin config options
reload 'user.treesitter'
reload 'user.whichkey'
reload 'user.nvim-tree'
