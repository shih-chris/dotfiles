--------------------
-- Remap Defaults --
--------------------

-- find
-- vim.keymap.set("n", "<leader>pr", LazyVim.pick("oldfiles"), { desc = "[r]ecent files" })
-- vim.keymap.set("n", "<leader>sf", LazyVim.pick("auto"), { desc = "find [f]iles (root dir)" })
-- vim.keymap.set("n", "<leader>sF", LazyVim.pick("auto", { root = false }), { desc = "find [F]iles (cwd)" })

-- buffer switching
-- vim.keymap.set("n", "<leader>bD", function()
-- 	Snacks.bufdelete.other()
-- end, { desc = "Delete Other Buffers" })

-- windows
vim.keymap.set("n", "<leader>w\\", "<C-W>v", { desc = "Split window right" })

-----------------
-- Insert Mode --
-----------------

-- Press jk fast to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })
vim.keymap.set("i", "<C-H>", "<C-W>") -- add back ctrl-delete functionality

-----------------
-- Normal Mode --
-----------------

-- LVIM carry over
vim.keymap.set("n", "J", "mzJ'z") -- Keep cursor in place with "J"

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { desc = "Resize Window - Up" })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { desc = "Resize Window - Down" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Resize Window - Left" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Resize Window - Right" })

-- Better window navigation (w/ Tmux Navigator)
vim.keymap.set("n", "<C-h>", "<Cmd>TmuxNavigateLeft<CR>", { desc = "Window Navigation - Left" })
vim.keymap.set("n", "<C-j>", "<Cmd>TmuxNavigateDown<CR>", { desc = "Window Navigation - Down" })
vim.keymap.set("n", "<C-k>", "<Cmd>TmuxNavigateUp<CR>", { desc = "Window Navigation - Up" })
vim.keymap.set("n", "<C-l>", "<Cmd>TmuxNavigateRight<CR>", { desc = "Window Navigation - Right" })

-- Move text up and down
vim.keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move text down - Normal Mode" })
vim.keymap.set("n", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move text up - Normal Mode" })

-- Remove highlighting
vim.keymap.set("n", "<leader>h", "<Cmd>nohl<CR>", { desc = "Remove highlighting" })

-----------------
-- Visual Mode --
-----------------

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent Line" })
vim.keymap.set("v", ">", ">gv", { desc = "De-indent Line" })

-- Move text up and down
vim.keymap.set("v", "<A-j>", ":m .+1<CR>==", { desc = "Move text down - Visual mode" })
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==", { desc = "Move text up - Visual mode" })
vim.keymap.set("v", "p", '"_dP', { desc = "Paste and retain value - Visual mode" })

-----------------------
-- Visual Block Mode --
-----------------------

-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", { desc = "Move text down - Visual Block mode" })
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", { desc = "Move text up - Visual Block mode" })
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", { desc = "Move text down - Visual Block mode" })
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", { desc = "Move text up - Visual Block mode" })
