return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      -- close_if_last_window = true,
      -- popup_border_style = "rounded",
      window = {
        -- position = "float",
        -- width = "100%",
        mappings = {
          -- ['<cr>'] = 'focus_preview',
          ["l"] = "open",
          ["h"] = "close_node",
        },
      },
    },
  },
}
