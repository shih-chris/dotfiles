local function augroup(name)
  return vim.api.nvim_create_augroup("cshih_" .. name, { clear = true })
end

local function organize_go_imports(bufnr)
  local clients = vim.lsp.get_clients({ bufnr = bufnr, name = "gopls" })
  if #clients == 0 then
    return
  end

  local params = vim.lsp.util.make_range_params(0, clients[1].offset_encoding)
  params.textDocument = vim.lsp.util.make_text_document_params(bufnr)
  params.context = { only = { "source.organizeImports" }, diagnostics = {} }

  local results = vim.lsp.buf_request_sync(bufnr, "textDocument/codeAction", params, 1000)
  for client_id, result in pairs(results or {}) do
    local client = vim.lsp.get_client_by_id(client_id)
    for _, action in pairs(result.result or {}) do
      if action.edit and client then
        vim.lsp.util.apply_workspace_edit(action.edit, client.offset_encoding)
      end
      if action.command then
        vim.lsp.buf.execute_command(action.command)
      end
    end
  end
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

-- go
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("ft_go"),
  pattern = { "go" },
  callback = function(ev)
    vim.opt_local.expandtab = false
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 0
    vim.treesitter.start(ev.buf, "go")
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup("fmt_go"),
  pattern = { "*.go" },
  callback = function(ev)
    organize_go_imports(ev.buf)
    vim.lsp.buf.format({
      bufnr = ev.buf,
      timeout_ms = 3000,
      filter = function(client)
        return client.name == "gopls"
      end,
    })
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
