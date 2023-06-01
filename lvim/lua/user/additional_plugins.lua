------------------------
-- Additional Plugins --
------------------------

lvim.plugins = {

    -- catppuccin
    {
        'catppuccin/nvim',
        lazy = true,
        name = 'catppuccin',
        opts = {
            flavour = 'mocha',
            -- flavour = 'macchiato',
            transparent_background = true,
        }
    },

    -- vim-motions
    {'tpope/vim-repeat', event = 'VeryLazy'},
    {'tpope/vim-commentary', event = 'VeryLazy'},
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup()
        end
    },

    -- vim-tmux-navigator
    {
        'christoomey/vim-tmux-navigator',
        lazy = false,
    },

}
