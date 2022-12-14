------------------------
-- Additional Plugins --
------------------------

-- User defined plugins
lvim.plugins = {
    -- colorschemes
    "EdenEast/nightfox.nvim",
    "sainnhe/sonokai",

    -- nvim plugins
    "p00f/nvim-ts-rainbow", -- rainbow parentheses
    {
        "norcalli/nvim-colorizer.lua", -- colorizer
        config = function()
            require("colorizer").setup({ "css", "scss", "html", "javascript" , "lua" , "yaml" }, {
                RGB = true, -- #RGB hex codes
                RRGGBB = true, -- #RRGGBB hex codes
                RRGGBBAA = true, -- #RRGGBBAA hex codes
                rgb_fn = true, -- CSS rgb() and rgba() functions
                hsl_fn = true, -- CSS hsl() and hsla() functions
                css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
                css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
            })
        end,
    },

    -- old vim plugins
    "tpope/vim-surround", -- surround keystrokes
    "tpope/vim-repeat", -- repeat surround keystrokes

}

