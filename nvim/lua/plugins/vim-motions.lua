return {
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
}
