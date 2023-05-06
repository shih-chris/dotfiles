---------------------------------
-- Custom Colorscheme Settings --
---------------------------------

return {

    -- tokyonight
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {style = "moon"},
    },

    -- catppuccin
    {
        "catppuccin/nvim",
        lazy = true,
        name = "catppuccin",
        opts = {
            flavour = "mocha",
            transparent_background = true,
        }
    },
}
