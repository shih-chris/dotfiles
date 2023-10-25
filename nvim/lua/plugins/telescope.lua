return {
  {
    "telescope.nvim",
    dependencies = {
      -- project management
      {
        "ahmedkhalf/project.nvim",
        opts = {
          manual_mode = true,
        },
        event = "VeryLazy",
        config = function(_, opts)
          require("project_nvim").setup(opts)
          require("lazyvim.util").on_load("telescope.nvim", function()
            require("telescope").load_extension("projects")
          end)
        end,
        keys = {
          { "<leader>pl", "<Cmd>Telescope projects<CR>", desc = "Projects" },
        },
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- general
      { "<leader>,", false },
      { "<leader>bl", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "[l]ist buffers" },
      { "<leader>/", false },
      { "<leader><space>", false },

      -- find
      { "<leader>fb", false },
      { "<leader>fc", false },
      { "<leader>fr", false },
      { "<leader>pr", "<cmd>Telescope oldfiles<cr>", desc = "[r]ecent files" },
      { "<leader>fR", false },
      { "<leader>ff", false },
      { "<leader>sf", require("lazyvim.util").telescope("files"), desc = "find [f]iles (root dir)" },
      { "<leader>fF", false },
      { "<leader>sF", require("lazyvim.util").telescope("files", { cwd = false }), desc = "find [f]iles (cwd)" },

      -- search
      { "<leader>sa", false },
      { "<leader>sH", false },
      { "<leader>sg", false },
      { "<leader>st", require("lazyvim.util").telescope("live_grep"), desc = "search [t]ext (root dir)" },
      { "<leader>sG", false },
      { "<leader>sT", require("lazyvim.util").telescope("live_grep", { cwd = false }), desc = "search [T]ext (cwd)" },
    },
  },
}
