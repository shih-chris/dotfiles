--------------------------------
-- Custom treesitter settings --
--------------------------------

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
    "bash",
    "c",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "java",
    "yaml",
    "sql",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.ensure_installed = 'all'
lvim.builtin.treesitter.highlight.enable = true

lvim.builtin.treesitter.indent = {
    enable = false,
    -- disable = {
    --     "sql",
    --     "yaml",
    --     "python"
    -- }
}

lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.treesitter.rainbow.max_file_lines = nil


-----------------------------
-- Old treesitter settings --
-----------------------------

-- local status_ok, configs = pcall(require, "nvim-treesitter.configs")
-- if not status_ok then
--     return
-- end

-- configs.setup {
--     ensure_installed = "all",
--     indent = {enable = false }
-- }

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
