------------------------
-- Additional Plugins --
------------------------

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- add lazy.nvim
require("lazy").setup({

    -- color scheme
    {"catppuccin/nvim", name = "catppuccin"},

    -- nvim plugins
    -- "p00f/nvim-ts-rainbow", -- rainbow parentheses
    "norcalli/nvim-colorizer.lua", -- colorizer
    -- "ggandor/lightspeed.nvim", -- nvim movement on steriods
    -- {
    --   "iamcco/markdown-preview.nvim",
    --   run = "cd app && npm install",
    --   ft = "markdown",
    --   config = function()
    --     vim.g.mkdp_auto_start = 1
    --   end,
    -- }, -- markdown-preview in browser

    -- old vim plugins
    "tpope/vim-commentary", -- comment keystrokes
    "tpope/vim-surround", -- surround keystrokes
    "tpope/vim-repeat", -- repeat surround keystrokes
    "jesseduffield/lazygit", -- git wrapper
    "JuliaEditorSupport/julia-vim", -- julia-vim

})
