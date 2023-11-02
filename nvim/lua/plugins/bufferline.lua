return {
  {
    "akinsho/bufferline.nvim",
    keys = {
      -- update descriptions
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "toggle [p]in" },
      { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "delete non-[P]inned buffers" },

      -- remap buffer close all others
      { "<leader>bo", false },
      { "<leader>bD", "<Cmd>BufferLineCloseOthers<CR>", desc = "[D]elete all other buffers" },

      -- remove unnecessary buffer keymap
      { "<leader>br", false },
      { "<leader>bl", false },
      { "[b", false },
      { "]b", false },
    },
  },
  {
    "echasnovski/mini.bufremove",
    keys = {
      {
        "<leader>bd",
        function()
          local bd = require("mini.bufremove").delete
          if vim.bo.modified then
            local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
            if choice == 1 then -- Yes
              vim.cmd.write()
              bd(0)
            elseif choice == 2 then -- No
              bd(0, true)
            end
          else
            bd(0)
          end
        end,
        desc = "[d]elete buffer",
      },
    -- stylua: ignore
      { "<leader>bD", "<Cmd>BufferLineCloseOthers<CR>", desc = "[D]elete all other buffers" },
      {
        "<leader>bF",
        function()
          require("mini.bufremove").delete(0, true)
        end,
        desc = "delete buffer ([F]orce)",
      },
    },
  },
}
