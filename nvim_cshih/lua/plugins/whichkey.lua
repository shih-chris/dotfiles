return {
	{
		"folke/which-key.nvim",
		opts = {
			spec = {
				mode = { "n", "v" },
				{ "<leader>p", group = "projects", icon = "" },
				{ "<leader>s", group = "search", icon = "" },
				{ "<leader>sf", desc = "search [f]iles", icon = "" },
				{ "<leader>w", group = "windows", icon = "" },
			},
			notify = false,
		},
	},
}
