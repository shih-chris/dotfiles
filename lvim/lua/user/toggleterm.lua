--------------------------
-- Toggle term settings --
--------------------------

-- Toggleterm mapping
-- lvim.builtin.terminal.open_mapping = "<c-t>"

-- function _G.set_terminal_keymaps()
--   local opts = {buffer = 0}
--   -- vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
--   -- vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
--   vim.keymap.set('t', '<C-l>', [[<Cmd>clear<CR>]], opts)
--   -- vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
--   -- vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
--   -- vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
-- end

-- -- if you only want these mappings for toggle term use term://*toggleterm#* instead
-- vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- General settings
lvim.builtin.terminal.active = true
lvim.builtin.terminal.direction = "horizontal"
-- lvim.builtin.terminal.size = 80

