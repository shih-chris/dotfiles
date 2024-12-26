return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			preset = "modern",
			spec = {
				mode = { "n", "v" },
				-- git
				{ "<leader>g", group = "git", icon = "" },
				{ "<leader>gg", desc = "lazy [g]it", icon = "󰒲" },
				-- projects
				{ "<leader>p", group = "projects", icon = "" },
				-- search
				{ "<leader>s", group = "search", icon = "" },
				{ "<leader>sf", desc = "search [f]iles", icon = "" },
				{ "<leader>sr", desc = "search [r]ecent files", icon = "" },
				{ "<leader>sb", desc = "search [b]uffers", icon = "" },
				{ "<leader>st", desc = "search [t]ext", icon = "󰊄" },
				{ "<leader>sh", desc = "search [h]elp tags", icon = "󰘥" },
				{ "<leader>sz", desc = "search f[z]f functions", icon = "󰡱" },
				-- windows
				{ "<leader>w", group = "windows", icon = "" },
			},
			notify = false,
		},
	},
}
