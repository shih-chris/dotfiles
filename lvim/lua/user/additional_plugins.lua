------------------------
-- Additional Plugins --
------------------------

lvim.plugins = {

    -- catppuccin
    {
        'catppuccin/nvim',
        lazy = true,
        name = 'catppuccin',
        opts = {
            flavour = 'mocha',
            -- flavour = 'macchiato',
        }
    },

    -- vim-motions
    {'tpope/vim-repeat', event = 'VeryLazy'},
    {'tpope/vim-commentary', event = 'VeryLazy'},
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup()
        end
    },

    -- vim-tmux-navigator
    {
        'christoomey/vim-tmux-navigator',
        lazy = false,
    },

    -- neo-tree
    {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
      },
      config = function()

        -- remove legacy commands
        vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

        -- setup
        require("neo-tree").setup({
            close_if_last_window = true,
            popup_border_style = 'rounded',
            window = {
                position = 'float',
                width = '100%',
                mappings = {
                    -- ['<cr>'] = 'focus_preview',
                    ['l'] = 'open',
                    ['h'] = 'close_node',
                },
            },
            buffers = {
                follow_current_file = true,
            },
            filesystem = {
                follow_current_file = true,
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_by_name = {
                        "node_modules"
                    },
                    never_show = {
                        ".DS_Store",
                        "thumbs.db"
                    },
                },
            },
        })
      end
    },
}
