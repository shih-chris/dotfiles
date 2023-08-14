return {
    'nvim-tree/nvim-web-devicons',
    {
        'akinsho/bufferline.nvim',
        version = '*',
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require('bufferline').setup({
                options = {
                    separator_style = 'thin',
                }
            })
        end
    },
    {
        'ojroques/nvim-bufdel',
        config = function()
            require('bufdel').setup({
                quit = true,
            })
        end
    },
}
