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
          LineNrAbove = { fg = colors.surface1 },
          LineNr = { fg = colors.mauve },
          LineNrBelow = { fg = colors.surface1 },
          SnacksIndent = { fg = colors.surface0 },
          SnacksIndentScope = { fg = colors.surface0 },
        }
      end,
      default_integration = false,
      integrations = {
        cmp = true,
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
    -- specs = {
      --   {
        --     "akinsho/bufferline.nvim",
        --     optional = true,
        --     opts = function(_, opts)
          --       if (vim.g.colors_name or ""):find("catppuccin") then
          --         opts.highlights = require("catppuccin.groups.integrations.bufferline").get({
            --           styles = { "bold" },
            --         })
            --       end
            --     end,
            --   },
            -- },
          },
        }
