return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>bp", false },
      { "<leader>bP", false },
      { "<leader>br", false },
      { "<leader>bl", false },
      { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
      { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
      { "[b", false },
      { "]b", false },
      { "[B", false },
      { "]B", false },
    },
    opts = {
      options = {
        show_buffer_icons = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        separator_style = "thin",
      },
    },
  },
}
