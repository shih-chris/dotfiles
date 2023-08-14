return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('telescope').setup(
		    -- -- for input mode
		    -- i = {
			-- ["<C-j>"] = actions.move_selection_next,
			-- ["<C-k>"] = actions.move_selection_previous,
			-- ["<C-n>"] = actions.cycle_history_next,
			-- ["<C-p>"] = actions.cycle_history_prev,
		    --   },
		    -- -- for normal mode
		    -- n = {
			-- ["<C-j>"] = actions.move_selection_next,
			-- ["<C-k>"] = actions.move_selection_previous,
		    -- },
	    )
        end,
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
            return vim.fn.executable 'make' == 1
        end,
        config = function()
            pcall(require('telescope').load_extension, 'fzf')
        end,
    },
}
