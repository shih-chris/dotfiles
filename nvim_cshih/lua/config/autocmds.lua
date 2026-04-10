local function augroup(name)
  return vim.api.nvim_create_augroup("cshih_" .. name, { clear = true })
end

-- sql
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("ft_sql"),
  pattern = { "sql" },
  callback = function(ev)
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
    vim.treesitter.start(ev.buf, "sql")
  end,
})

-- python
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("ft_python"),
  pattern = { "python" },
  callback = function(ev)
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
    vim.treesitter.start(ev.buf, "python")
  end,
})

-- lua, json
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("ft_lua_json"),
  pattern = { "lua", "json", "jsonc" },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})

-- markdown
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("ft_markdown"),
  pattern = { "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})

-- zsh
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("ft_zsh"),
  pattern = { "zsh" },
  callback = function(ev)
    vim.bo[ev.buf].commentstring = "# %s"
  end,
})
