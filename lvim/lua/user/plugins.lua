------------------------
-- Additional Plugins --
------------------------

-- User defined plugins
lvim.plugins = {
    -- colorschemes
    "EdenEast/nightfox.nvim",
    "sainnhe/sonokai",
    "catppuccin/nvim",

    -- nvim plugins
    "p00f/nvim-ts-rainbow", -- rainbow parentheses
    "norcalli/nvim-colorizer.lua", -- colorizer
    "ggandor/lightspeed.nvim", -- nvim movement on steriods
    {
      "iamcco/markdown-preview.nvim",
      run = "cd app && npm install",
      ft = "markdown",
      config = function()
        vim.g.mkdp_auto_start = 1
      end,
    }, -- markdown-preview in browser

    -- old vim plugins
    "tpope/vim-surround", -- surround keystrokes
    "tpope/vim-repeat", -- repeat surround keystrokes
    "jesseduffield/lazygit", -- git wrapper
    "JuliaEditorSupport/julia-vim", -- julia-vim

}

