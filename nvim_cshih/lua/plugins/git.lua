return {
  {
    "folke/snacks.nvim",
    event = "VeryLazy",
    opts = {
      lazygit = { enabled = true },
      git = { enabled = true },
      gitbrowse = { enabled = true },
    },
    keys = {
      { "<leader>gg", function() Snacks.lazygit() end, desc = "lazy [g]it", },
      { "<leader>gf", function() Snacks.lazygit.log_file() end, desc = "log [f]ile", },
      { "<leader>gb", function() Snacks.git.blame_line() end, desc = "git [b]lame", },
      { "<leader>gB", function() Snacks.gitbrowse() end, desc = "git [B]rowse", },
    },
  },
}
