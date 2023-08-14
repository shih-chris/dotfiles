-----------------------------
-- Source individual files --
-----------------------------

--Remap space as leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('config.plugins')

require('config.keymaps')
require('config.options')
