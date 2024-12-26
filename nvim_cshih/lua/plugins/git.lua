return {
	{
		"folke/snacks.nvim",
		event = "VeryLazy",
		opts = {
			lazygit = { enabled = true },
			git = { enabled = true },
			gitbrowse = { enabled = true },
		},
		keys = {
			{
				"<leader>gg",
				function()
					Snacks.lazygit()
				end,
			},
			{
				"<leader>gf",
				function()
					Snacks.lazygit.log_file()
				end,
			},
			{
				"<leader>gb",
				function()
					Snacks.git.blame_line()
				end,
			},
			{
				"<leader>gB",
				function()
					Snacks.gitbrowse()
				end,
			},
		},
	},
}
