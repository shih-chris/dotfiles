return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      dashboard = {
        preset = {
          header = [[

          ██╗  ██╗███████╗██╗     ██╗      ██████╗      ██████╗██╗  ██╗██████╗ ██╗███████╗
          ██║  ██║██╔════╝██║     ██║     ██╔═══██╗    ██╔════╝██║  ██║██╔══██╗██║██╔════╝
          ███████║█████╗  ██║     ██║     ██║   ██║    ██║     ███████║██████╔╝██║███████╗
          ██╔══██║██╔══╝  ██║     ██║     ██║   ██║    ██║     ██╔══██║██╔══██╗██║╚════██║
          ██║  ██║███████╗███████╗███████╗╚██████╔╝    ╚██████╗██║  ██║██║  ██║██║███████║
          ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝      ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚══════╝

          ]],
          -- stylua: ignore
          ---@type snacks.dashboard.Item[]
          keys = {
            { icon = " ", key = "f", desc = "find [f]iles", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "t", desc = "find [t]ext", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = " ", key = "r", desc = "[r]ecent files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = "󰒲 ", key = "l", desc = "[l]azy", action = ":Lazy" },
            { icon = " ", key = "q", desc = "[q]uit", action = ":qa" },
          },
        },
      },
      indent = {
        animate = {
          enabled = false,
        },
      },
      notifier = { enabled = true },
      scope = { enabled = true },
      quickfile = { enabled = true },
    },
    keys = {
      { "<leader>bd", function() Snacks.bufdelete() end, desc = "[d]elete buffer" },
      { "<leader>bD", function() Snacks.bufdelete.other() end, desc = "[D]elete other buffers" },
      { "<leader>gg", function() Snacks.lazygit() end, desc = "lazy [g]it", },
      { "<leader>gf", function() Snacks.lazygit.log_file() end, desc = "log [f]ile", },
      { "<leader>gb", function() Snacks.git.blame_line() end, desc = "git [b]lame", },
      { "<leader>gB", function() Snacks.gitbrowse() end, desc = "git [B]rowse", },
    },
  },
}

