---------------------------------
-- Custom Colorscheme Settings --
---------------------------------

return {

	-- catppuccin
	{
		"catppuccin/nvim",
		priority = 1000,
		name = "catppuccin",
		opts = {
			-- flavour = 'mocha',
			flavour = "macchiato",
			background = {
				light = "latte",
				dark = "macchiato",
			},
			transparent_background = true,
			custom_highlights = function(colors)
				return {
					LineNrAbove = { fg = colors.surface1 },
					LineNr = { fg = colors.mauve },
					LineNrBelow = { fg = colors.surface1 },
					SnacksIndent = { fg = colors.surface0 },
					SnacksIndentScope = { fg = colors.surface0 },
				}
			end,
		},
	},
}
