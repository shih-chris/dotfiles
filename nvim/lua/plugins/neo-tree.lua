return {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v2.x',
        config = function()
            vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

            require('neo-tree').setup({
                window = {
                    width = 30,
                    mappings = {
                        ['<cr>'] = 'focus_preview',
                        ['l'] = 'open',
                        ['h'] = 'close_node',
                    }
                },
            })
        end
    },
}
