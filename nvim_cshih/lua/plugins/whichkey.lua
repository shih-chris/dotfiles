return {
	{
		"folke/which-key.nvim",
		opts = {
			spec = {
				mode = { "n", "v" },
				{ "<leader>p", group = "+projects", icon = "" },
				{ "<leader>s", group = "+search", icon = "" },
			},
			notify = false,
		},
	},
}
