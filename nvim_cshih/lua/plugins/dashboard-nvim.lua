return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
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
            { icon = " ", key = "s", desc = "restore [s]ession", section = "session" },
            { icon = "󰒲 ", key = "l", desc = "[l]azy", action = ":Lazy" },
            { icon = " ", key = "q", desc = "[q]uit", action = ":qa" },
          },
        },
      },
    },
  },
}
