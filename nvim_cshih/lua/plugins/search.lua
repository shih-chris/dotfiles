return {
	{
		"ibhagwan/fzf-lua",
		-- dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local fzf_lua = require("fzf-lua")

			fzf_lua.setup({
				winopts = {
					preview = {
						vertical = "up:60%",
						horizontal = "right:60%",
						layout = "flex",
						winopts = { number = false },
					},
				},
				keymap = {
					fzf = {
						false,
						["ctrl-d"] = "half-page-down",
						["ctrl-u"] = "half-page-up",
					},
				},
			})
			-- set keymaps
			vim.keymap.set("n", "<leader>sf", fzf_lua.files)
		end,
	},
}
