-----------------------
-- Custom keymapping --
-----------------------

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

lvim.keys.insert_mode["jk"] = "<ESC>" -- custom esacpe
lvim.keys.insert_mode["<C-H>"] = "<C-W>" -- add back ctrl-delete functionality
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>" -- Shift cycle through buffers
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>" -- Shift cycle through buffers 
lvim.keys.normal_mode["J"] = "mzJ'z" -- Keep cursor in place with "J"

-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
    -- for input mode
    i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,
      },
    -- for normal mode
    n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
    },
}

-- Better window navigation (w/ Tmux Navigator)
vim.keymap.set('n', '<C-h>', '<Cmd>TmuxNavigateLeft<CR>', { desc = 'Window Navigation - Left' })
vim.keymap.set('n', '<C-j>', '<Cmd>TmuxNavigateDown<CR>', { desc = 'Window Navigation - Down' })
vim.keymap.set('n', '<C-k>', '<Cmd>TmuxNavigateUp<CR>', { desc = 'Window Navigation - Up' })
vim.keymap.set('n', '<C-l>', '<Cmd>TmuxNavigateRight<CR>', { desc = 'Window Navigation - Right' })
