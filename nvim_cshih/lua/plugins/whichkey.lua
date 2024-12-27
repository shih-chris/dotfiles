return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
      spec = {
        mode = { "n", "v" },
        -- buffer
        { "<leader>b", group = "buffer", icon = "" },
        -- code
        { "<leader>c", group = "code", icon = "" },
        -- mini-surround
        { "gs", group = "surround", icon = "" },
        -- git
        { "<leader>g", group = "git", icon = "" },
        { "<leader>gg", icon = "󰒲" },
        -- projects
        { "<leader>p", group = "projects", icon = "" },
        -- search
        { "<leader>s", group = "search", icon = "" },
        { "<leader>sf", icon = "" },
        { "<leader>sr", icon = "" },
        { "<leader>sb", icon = "" },
        { "<leader>st", icon = "󰊄" },
        { "<leader>sh", icon = "󰘥" },
        { "<leader>sk", icon = "" },
        { "<leader>sz", icon = "󰡱" },
        -- windows
        { "<leader>w", group = "windows", icon = "" },
      },
      notify = false,
    },
  },
}
