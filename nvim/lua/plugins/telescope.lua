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
    opts = {
      defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        mappings = {
          i = {
            ["<c-t>"] = function(...)
              return require("trouble.providers.telescope").open_with_trouble(...)
            end,
            ["<a-t>"] = function(...)
              return require("trouble.providers.telescope").open_selected_with_trouble(...)
            end,
            ["<C-j>"] = function(...)
              return require("telescope.actions").move_selection_next(...)
            end,
            ["<C-k>"] = function(...)
              return require("telescope.actions").move_selection_previous(...)
            end,
            ["<C-d>"] = function(...)
              return require("telescope.actions").results_scrolling_down(...)
            end,
            ["<C-u>"] = function(...)
              return require("telescope.actions").results_scrolling_up(...)
            end,
          },
          n = {
            ["q"] = function(...)
              return require("telescope.actions").close(...)
            end,
          },
        },
      },
    },
    keys = {
      -- general
      { "<leader>,", false },
      { "<leader>bb", "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "list [b]uffers" },
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
      { "<leader>sG", false },
      { "<leader>sw", false },
      { "<leader>sW", false },
    },
  },
}
