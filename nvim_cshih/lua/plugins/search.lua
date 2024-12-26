return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "echasnovski/mini.icons" },
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
			vim.keymap.set("n", "<leader>sr", fzf_lua.oldfiles)
			vim.keymap.set("n", "<leader>sb", fzf_lua.buffers)
			vim.keymap.set("n", "<leader>st", fzf_lua.live_grep_native)
			vim.keymap.set("n", "<leader>sh", fzf_lua.helptags)
			vim.keymap.set("n", "<leader>sz", fzf_lua.builtin)
		end,
	},
}
