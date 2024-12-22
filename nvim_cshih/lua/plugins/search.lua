return {
	{
		"ibhagwan/fzf-lua",
		-- dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local fzf_lua = require("fzf-lua")
			fzf_lua.setup({
				fzf_colors = {
					["gutter"] = "-1",
				},
				winopts = {
					backdrop = 100,
				},
			})
			-- set keymaps
			vim.keymap.set("n", "<leader>sf", fzf_lua.files, { desc = "[s]earch [f]iles" })
		end,
	},
}
