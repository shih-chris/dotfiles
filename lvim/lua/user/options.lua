-------------------------------
-- Neovim / Lunarvim Options --
-------------------------------

--------------------------
-- Colorscheme settings --
--------------------------

-- vim.g.sonokai_style = 'atlantis'
-- vim.g.sonokai_style = 'andromeda'
-- vim.g.sonokai_style = 'maia'
-- lvim.colorscheme = 'lunarvim'
vim.cmd.colorscheme "catppuccin"
lvim.transparent_window = true

--------------------------
-- General nvim options --
--------------------------

lvim.log.level = "warn"
lvim.format_on_save.enabled = false

local nvim_options = {
    -- display options
    cmdheight = 2,                           -- more space in the neovim command line for displaying messages
    conceallevel = 0,                        -- so that `` is visible in markdown files
    cursorline = false,                      -- highlight the current line
    hlsearch = true,                         -- highlight all matches on previous search pattern
    number = true,                           -- set numbered lines
    numberwidth = 4,                         -- set number column width to 2 {default 4}
    pumheight = 10,                          -- pop up menu height
    relativenumber = true,                   -- set relative numbered lines
    scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor
    sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false`
    showmode = true,                         -- we don't need to see things like -- INSERT -- anymore
    showtabline = 2,                         -- always show tabs
    splitbelow = true,                       -- force all horizontal splits to go below current window
    splitright = true,                       -- force all vertical splits to go to the right of current window
    termguicolors = true,                    -- set term gui colors (most terminals support this)

    wrap = false,                            -- display lines as one long line

    -- format options
    shiftwidth = 4,                          -- the number of spaces inserted for each indentation
    tabstop = 4,                             -- insert 4 spaces for a tab

    -- backend options
    backup = false,                          -- creates a backup file
    clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
    completeopt = { "menuone", "noselect" }, -- mostly just for cmp
    fileencoding = "utf-8",                  -- the encoding written to a file
    ignorecase = true,                       -- ignore case in search patterns
    mouse = "a",                             -- allow the mouse to be used in neovim
    smartcase = true,                        -- smart case
    smartindent = true,                      -- make indenting smarter again
    swapfile = false,                        -- creates a swapfile
    timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
    undofile = true,                         -- enable persistent undo
    updatetime = 300,                        -- faster completion (4000ms default)
    writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    expandtab = true,                        -- convert tabs to spaces
    signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
    guifont = "Hack Nerd Font",              -- the font used in graphical neovim applications
    whichwrap = "bs<>[]hl",                  -- which "horizontal" keys are allowed to travel to prev/next line
}

for k, v in pairs(nvim_options) do
    vim.opt[k] = v
end

-- Fix formatting
vim.api.nvim_create_autocmd({"FileType"}, {
  pattern = '*',
  callback = function ()
    vim.opt.formatoptions:remove({ 'o' })
  end
})

------------------------------
-- Custom lunarvim settings --
------------------------------

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.indentlines.options.use_treesitter = true
lvim.builtin.terminal.active = true
lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.view.adaptive_size = true
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false


