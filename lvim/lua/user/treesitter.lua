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

lvim.builtin.treesitter.ensure_installed = 'all'
lvim.builtin.treesitter.indent = {
    enable = false,
    -- disable = {
    --     "sql",
    --     "yaml",
    --     "python"
    -- }
}

