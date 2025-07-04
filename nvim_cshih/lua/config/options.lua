--------------------------
-- General nvim options --
--------------------------

local options = {

  -- display options
  cursorline = false, -- highlight the current line
  hlsearch = true, -- highlight all matches on previous search pattern
  number = true, -- set numbered lines
  numberwidth = 2, -- set number column width to 2 {default 4}
  pumheight = 10, -- pop up menu height
  cmdheight = 0, -- hides command line unless it is in use
  relativenumber = true, -- set relative numbered lines
  scrolloff = 8, -- minimal number of screen lines to keep above and below the cursor
  sidescrolloff = 8, -- minimal number of screen columns either side of cursor if wrap is `false`
  showmode = false, -- we don't need to see things like -- INSERT -- anymore
  showtabline = 0, -- always show tabs
  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
  termguicolors = true, -- set term gui colors (most terminals support this)

  wrap = false, -- display lines as one long line

  -- format options
  shiftwidth = 4, -- the number of spaces inserted for each indentation
  softtabstop = 4, -- the number of spaces that a <Tab> counts for
  autoindent = true, -- uses the indent from the previous line
  smartindent = false, -- make indenting smarter again

  -- backend options
  backup = false, -- creates a backup file
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  fileencoding = "utf-8", -- the encoding written to a file
  ignorecase = true, -- ignore case in search patterns
  mouse = "a", -- allow the mouse to be used in neovim
  smartcase = true, -- smart case
  swapfile = false, -- creates a swapfile
  timeoutlen = 300, -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true, -- enable persistent undo
  updatetime = 300, -- faster completion (4000ms default)
  writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true, -- convert tabs to spaces
  signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
  guifont = "monospace:h17", -- the font used in graphical neovim applications
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Fix formatting
-- vim.api.nvim_command("filetype plugin indent off")
-- vim.api.nvim_create_autocmd({ "FileType" }, {
--   pattern = "*",
--   callback = function()
--     vim.opt.formatoptions:remove({ "o" })
--   end,
-- })

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})
