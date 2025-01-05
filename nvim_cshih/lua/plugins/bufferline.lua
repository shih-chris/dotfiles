return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    keys = {
      { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
      { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    },
    opts = function(_, opts)
      local bufferline = require("bufferline")
      opts.options = {
        style_preset = {
          bufferline.style_preset.no_italic,
          -- bufferline.style_preset.no_bold,
        },
        always_show_bufferline = false,
        show_buffer_icons = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        -- separator_style = "slant",
        indicator = {
          style = "none",
        },
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
            separator = false,
          },
        },
      }
      local macchiato = require("catppuccin.palettes").get_palette "macchiato"
      opts.highlights = require("catppuccin.groups.integrations.bufferline").get({
        styles = { "bold" },
        custom = {
          all = {
            buffer_visible = {
              fg = macchiato.peach
            },
            buffer_selected = {
              fg = macchiato.peach
            },
            separator_visible = {
              fg = macchiato.peach
            },
          },
        },
      })
    end
  },
}
