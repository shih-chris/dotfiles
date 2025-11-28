return {
  {
    "Vigemus/iron.nvim",
    keys = {
      {
        "<leader>rs",
        function()
          local file_dir = vim.fn.expand("%:p:h")
          vim.cmd("IronRepl")
          if file_dir ~= "" then
            vim.defer_fn(function()
              require("iron.core").send(nil, string.format("import os; os.chdir('%s')", file_dir))
            end, 200)
          end
        end,
        desc = "Start REPL",
      },
      { "<leader>rr", "<cmd>IronRestart<cr>", desc = "Restart REPL" },
      { "<leader>rf", "<cmd>IronFocus<cr>", desc = "Focus REPL" },
      { "<leader>rh", "<cmd>IronHide<cr>", desc = "Hide REPL" },
    },
    config = function()
      local iron = require("iron.core")

      iron.setup({
        config = {
          scratch_repl = true,
          repl_definition = {
            python = {
              command = { "ipython", "--no-autoindent" },
              format = require("iron.fts.common").bracketed_paste_python,
            },
          },
          repl_open_cmd = require("iron.view").right("40%"),
        },
        keymaps = {
          send_motion = "<space>cr",
          visual_send = "<space>cr",
          send_line = "<space>cc",
          send_until_cursor = "<space>cu",
          -- send_mark = "<space>cm",
          -- cr = "<space>s<cr>",
          interrupt = "<space>s<space>",
          exit = "<space>sq",
          clear = "<space>cl",
        },
        highlight = {
          italic = true,
        },
      })

      -- Make iron.nvim REPL terminal backgrounds transparent
      vim.api.nvim_create_autocmd("TermOpen", {
        pattern = "*",
        callback = function()
          -- Only apply to iron.nvim REPLs by checking buffer name
          local bufname = vim.api.nvim_buf_get_name(0)
          if bufname:match("iron://") then
            vim.opt_local.winhighlight = "Normal:Normal,NormalNC:Normal"
          end
        end,
      })
    end,
  },
}
