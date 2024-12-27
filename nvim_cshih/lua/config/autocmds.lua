local function augroup(name)
  return vim.api.nvim_create_augroup("cshih_" .. name, { clear = true })
end

-- set tabspace to 4
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("tabspace_4"),
  pattern = { "sql", "py" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
})

-- set tabspace to 2
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("tabspace_2"),
  pattern = { "lua" },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})

-- add # commentstrings
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("terraform_commentstring"),
  callback = function(ev)
    vim.bo[ev.buf].commentstring = "# %s"
  end,
  pattern = { "zsh" },
})
