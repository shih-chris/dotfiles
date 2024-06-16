return {
  {
    "folke/todo-comments.nvim",
    keys = {
      { "<leader>st", false },
      { "<leader>st", LazyVim.pick("live_grep"), desc = "search [t]ext (root dir)" },
      -- { "<leader>st", require("lazyvim.util").telescope("live_grep"), desc = "search [t]ext (root dir)" },
    },
  },
}
