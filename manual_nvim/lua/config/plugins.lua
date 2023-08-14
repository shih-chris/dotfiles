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
require("lazy").setup("plugins")

--------------
-- Appendix --
--------------

    -- "p00f/nvim-ts-rainbow", -- rainbow parentheses
    -- "norcalli/nvim-colorizer.lua", -- colorizer
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
    -- "tpope/vim-surround",                   -- surround keystrokes
