---------------------------------
-- Custom Colorscheme Settings --
---------------------------------

return {
  -- catppuccin
  {
    "catppuccin/nvim",
    priority = 1000,
    name = "catppuccin",
    opts = {
      -- flavour = 'mocha',
      flavour = "macchiato",
      background = {
        light = "latte",
        dark = "macchiato",
      },
      transparent_background = true,
      custom_highlights = function(colors)
        return {
          LineNrAbove = { fg = colors.surface2 },
          LineNr = { fg = colors.mauve },
          LineNrBelow = { fg = colors.surface2 },
          SnacksIndent = { fg = colors.surface0 },
          SnacksIndentScope = { fg = colors.surface0 },
          -- IblIndent = { fg = colors.surface0 },
          -- IblScope = { fg = colors.mauve },
        }
      end,
      default_integration = false,
      integrations = {
        blink_cmp = true,
        indent_blankline = {
          enabled = true,
          scope_color = "mauve",
          colored_indent_levels = false,
        },
        fzf = true,
        neotree = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
            ok = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
            ok = { "underline" },
          },
          inlay_hints = {
            background = true,
          },
        },
      },
    },
  },
  -- kanagawa
  -- {
  --   "rebelot/kanagawa.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     transparent = true,
  --     colors = {
  --       theme = {
  --         all = {
  --           ui = {
  --             bg_gutter = "none"
  --           }
  --         }
  --       }
  --     },
  --     overrides = function(colors)
  --       return {
  --         LineNrAbove = { fg = colors.palette.fujiGray },
  --         LineNr = { fg = colors.palette.surimiOrange },
  --         LineNrBelow = { fg = colors.palette.fujiGray },
  --         SnacksIndent = { fg = colors.palette.sumiInk4 },
  --         SnacksIndentScope = { fg = colors.palette.winterBlue },
  --       }
  --     end,
  --   },
  -- },
  -- cyberdream
  -- {
  --   "scottmckendry/cyberdream.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     transparent = true,
  --     themes = {
  --       highlights = function(colors)
  --         return {
  --           LineNrAbove = { fg = colors.bgHighlight },
  --           LineNr = { fg = colors.blue },
  --           LineNrBelow = { fg = colors.bgHighlight },
  --           SnacksIndent = { fg = colors.bgAlt },
  --           SnacksIndentScope = { fg = colors.bgAlt },
  --         }
  --       end,
  --     },
  --     extensions = {
  --       blinkcmp = true,
  --       fzflua = true,
  --       gitsigns = true,
  --       mini = true,
  --       notify = true,
  --       snacks = true,
  --       treesitter = true,
  --       whichkey = true,
  --     },
  --   },
  -- },
}
