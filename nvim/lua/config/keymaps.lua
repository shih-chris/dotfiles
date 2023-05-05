-- Insert --
-- Press jk fast to exit insert mode 
vim.keymap.set("i", "jk", "<ESC>", { desc = 'Exit insert mode' })

-- Normal --
-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = 'Window Navigation - Left' })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = 'Window Navigation - Down' })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = 'Window Navigation - Up' })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = 'Window Navigation - Right' })

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { desc = 'Resize Window - Up' })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { desc = 'Resize Window - Down' })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = 'Resize Window - Left' })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = 'Resize Window - Right' })

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = 'Buffer Navigation - Next' })
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = 'Buffer Navigation - Previous' })

-- Move text up and down
vim.keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = 'Move text down - Normal Mode' })
vim.keymap.set("n", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = 'Move text up - Normal Mode' })

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { desc = 'Indent Line' })
vim.keymap.set("v", ">", ">gv", { desc = 'De-indent Line' })

-- Move text up and down
vim.keymap.set("v", "<A-j>", ":m .+1<CR>==", { desc = 'Move text down - Visual mode' })
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==", { desc = 'Move text up - Visual mode' })
vim.keymap.set("v", "p", '"_dP', { desc = 'Paste and retain value - Visual mode'})

-- Visual Block --
-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", { desc = 'Move text down - Visual Block mode' })
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", { desc = 'Move text up - Visual Block mode' })
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", { desc = 'Move text down - Visual Block mode' })
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", { desc = 'Move text up - Visual Block mode' })
