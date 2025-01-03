return {
  {
    "ibhagwan/fzf-lua",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local fzf_lua = require("fzf-lua")
      fzf_lua.setup({
        defaults = {
          no_header = true,
        },
        winopts = {
          preview = {
            vertical = "up:60%",
            horizontal = "right:60%",
            layout = "flex",
            winopts = { number = false },
          },
        },
        fzf_opts = {
          ["--layout"] = false,
        },
        keymap = {
          fzf = {
            false,
            ["ctrl-d"] = "half-page-down",
            ["ctrl-u"] = "half-page-up",
          },
        },
      })
      -- set keymaps
      vim.keymap.set("n", "<leader>sf", fzf_lua.files, { desc = "search [f]iles" })
      vim.keymap.set("n", "<leader>sr", fzf_lua.oldfiles, { desc = "search [r]ecent files" })
      vim.keymap.set("n", "<leader>sb", fzf_lua.buffers, { desc = "search [b]uffers" })
      vim.keymap.set("n", "<leader>st", fzf_lua.live_grep_native, { desc = "search [t]ext" })
      vim.keymap.set("n", "<leader>sh", fzf_lua.helptags, { desc = "search [h]elp" })
      vim.keymap.set("n", "<leader>sk", fzf_lua.keymaps, { desc = "search [k]eymaps" })
      vim.keymap.set("n", "<leader>sz", fzf_lua.builtin, { desc = "search f[z]f functions" })
    end,
  },
}
