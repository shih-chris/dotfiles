return {
  {
    "Vigemus/iron.nvim",
    keys = {
      { "<leader>rs", "<cmd>IronRepl<cr>", desc = "Start REPL" },
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
              command = function()
                local file_dir = vim.fn.expand("%:p:h")
                if file_dir == "" then
                  file_dir = vim.fn.getcwd()
                end
                return { "sh", "-c", string.format("cd '%s' && python3", file_dir) }
              end,
              format = require("iron.fts.common").bracketed_paste_python,
            },
          },
          repl_open_cmd = require("iron.view").right(60),
        },
        keymaps = {
          send_motion = "<space>sc",
          visual_send = "<space>sc",
          send_line = "<space>sl",
          send_until_cursor = "<space>su",
          send_mark = "<space>sm",
          cr = "<space>s<cr>",
          interrupt = "<space>s<space>",
          exit = "<space>sq",
          clear = "<space>cl",
        },
        highlight = {
          italic = true,
        },
      })

      -- Make terminal backgrounds transparent
      vim.api.nvim_create_autocmd("TermOpen", {
        pattern = "*",
        callback = function()
          vim.opt_local.winhighlight = "Normal:Normal,NormalNC:Normal"
        end,
      })
    end,
  },
}
