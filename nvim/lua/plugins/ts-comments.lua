return {
  {
    "folke/ts-comments.nvim",
    opts = {
      lang = {
        lua = "-- %s",
        json = "// %s",
      },
    },
    event = "VeryLazy",
    enabled = vim.fn.has("nvim-0.10.0") == 1,
  },
}
