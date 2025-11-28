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
      { "<leader>cJ", "<cmd>lua require('notebook-navigator').run_cell()<cr>", desc = "Run current cell" },
      { "<leader>cj", "<cmd>lua require('notebook-navigator').run_and_move()<cr>", desc = "Run cell and move to next" },
    },
    dependencies = {
      "echasnovski/mini.comment",
      "Vigemus/iron.nvim",
    },
    event = "VeryLazy",
    config = function()
      local nn = require("notebook-navigator")
      nn.setup({
        activate_hydra_keys = nil,  -- Disable hydra due to conflict with snacks.nvim
        repl_provider = "iron",
        syntax_highlight = false,
      })
    end,
  },
}
