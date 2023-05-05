return {
    "tpope/vim-repeat",                         -- repeat surround keystrokes
    "tpope/vim-commentary",                     -- comment keystrokes
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup()
        end
    },                                          -- vim surround
}

