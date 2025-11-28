return {
  -- Jupytext: Convert between .ipynb and text formats
  {
    "GCBallesteros/jupytext.nvim",
    config = function()
      require("jupytext").setup({
        style = "hydrogen",
        output_extension = "auto",
        force_ft = nil,
      })
    end,
  },

  -- NotebookNavigator: Cell navigation and execution
  {
    "GCBallesteros/NotebookNavigator.nvim",
    keys = {
      { "]h", function() require("notebook-navigator").move_cell("d") end, desc = "Move to next cell" },
      { "[h", function() require("notebook-navigator").move_cell("u") end, desc = "Move to previous cell" },
      { "<leader>X", "<cmd>lua require('notebook-navigator').run_cell()<cr>", desc = "Run current cell" },
      { "<leader>x", "<cmd>lua require('notebook-navigator').run_and_move()<cr>", desc = "Run cell and move to next" },
    },
    dependencies = {
      "echasnovski/mini.comment",
      "anuvyklack/hydra.nvim",
      "Vigemus/iron.nvim",
    },
    event = "VeryLazy",
    config = function()
      local nn = require("notebook-navigator")
      nn.setup({
        activate_hydra_keys = "<leader>h",
        repl_provider = "iron",
        syntax_highlight = false,
        show_hydra_hint = true,
      })
    end,
  },
}
