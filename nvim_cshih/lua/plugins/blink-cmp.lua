return {
  {
    -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
    -- used for completion, annotations and signatures of Neovim apis
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = "luvit-meta/library", words = { "vim%.uv" } },
      },
    },
  },
  {
    'saghen/blink.cmp',
    -- dependencies = 'rafamadriz/friendly-snippets',
    version = '1.*',
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
        ["<C-e>"] = { 'show', 'show_documentation', 'hide_documentation' },
        -- ["<C-e>"] = { 'hide', 'fallback' },
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
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            -- make lazydev completions top priority (see `:h blink.cmp`)
            score_offset = 100,
          },
        },
      },
    },
    opts_extend = { "sources.default" }
  },
}
