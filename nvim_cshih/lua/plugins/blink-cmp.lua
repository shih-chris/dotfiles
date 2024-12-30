return {
  {
    'saghen/blink.cmp',
    -- dependencies = 'rafamadriz/friendly-snippets',
    version = '*',
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- 'default' for mappings similar to built-in completion
      -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
      -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
      -- See the full "keymap" documentation for information on defining your own keymap.
      keymap = {
        preset = 'none',
        ["<C-Space>"] = { 'accept', 'fallback' },
        ["<S-e>"] = { 'show', 'show_documentation', 'hide_documentation' },
        ["<C-e>"] = { 'hide', 'fallback' },
        ["<C-k>"] = { 'select_prev', 'fallback' },
        ["<C-j>"] = { 'select_next', 'fallback' },
        ["<C-u>"] = { 'scroll_documentation_up', 'fallback' },
        ["<C-d>"] = { 'scroll_documentation_down', 'fallback' },
      },

      appearance = {
        -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        nerd_font_variant = 'mono'
      },

      completion = {
        menu = {
          auto_show = false,
        },
        ghost_text = { enabled = true },
      },

      -- Default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, due to `opts_extend`
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
    },
    opts_extend = { "sources.default" }
  },
}
