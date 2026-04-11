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

-- yml
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("ft_yaml"),
  pattern = { "yaml" },
  callback = function(ev)
    vim.treesitter.start(ev.buf, "yaml")
  end,
})

-- lua
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("ft_lua"),
  pattern = { "lua" },
  callback = function(ev)
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
    if ev.match == "lua" then
      vim.treesitter.start(ev.buf, "lua")
    end
  end,
})

-- json
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("ft_json"),
  pattern = { "json", "jsonc" },
  callback = function(ev)
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})

-- markdown
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("ft_markdown"),
  pattern = { "markdown", "markdown_inline" },
  callback = function(ev)
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    if ev.match == "markdown_inline" then
      vim.treesitter.start(ev.buf, "markdown_inline")
    else
      vim.treesitter.start(ev.buf, "markdown")
    end
  end,
})

-- vimscript
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("ft_vim"),
  pattern = { "vim" },
  callback = function(ev)
    vim.treesitter.start(ev.buf, "vim")
  end,
})

-- vim help docs
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("ft_vimdoc"),
  pattern = { "help" },
  callback = function(ev)
    vim.treesitter.start(ev.buf, "vimdoc")
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
