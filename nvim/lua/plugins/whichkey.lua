return {
  {
    "folke/which-key.nvim",
    opts = {
      --      defaults = {
      --        mode = { "n", "v" },
      --        ["g"] = { name = "+goto" },
      --        ["gs"] = { name = "+surround" },
      --        ["]"] = { name = "+next" },
      --        ["["] = { name = "+prev" },
      --        ["<leader>b"] = { name = "+buffer" },
      --        ["<leader>c"] = { name = "+code" },
      --        ["<leader>g"] = { name = "+git" },
      --        ["<leader>gh"] = { name = "+hunks" },
      --        ["<leader>p"] = { name = "+projects" },
      --        ["<leader>q"] = { name = "+quit/session" },
      --        ["<leader>s"] = { name = "+search" },
      --        ["<leader>u"] = { name = "+ui" },
      --        ["<leader>w"] = { name = "+windows" },
      --        ["<leader>x"] = { name = "+diagnostics/quickfix" },
      --      },
      spec = {
        mode = { "n", "v" },
        { "<leader>p", group = "+projects", icon = "" },
        { "<leader>s", group = "+search", icon = "" },
      },
      notify = false,
    },
  },
}
