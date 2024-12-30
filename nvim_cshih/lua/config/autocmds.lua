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

-- lsp progress notification
vim.api.nvim_create_autocmd("LspProgress", {
  ---@param ev {data: {client_id: integer, params: lsp.ProgressParams}}
  callback = function(ev)
    local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
    vim.notify(vim.lsp.status(), "info", {
      id = "lsp_progress",
      title = "LSP Progress",
      opts = function(notif)
        notif.icon = ev.data.params.value.kind == "end" and " "
          or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
      end,
    })
  end,
})
