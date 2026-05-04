return {
  -- Command and arguments to start the server.
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_markers = { "go.mod", "go.work", ".git" },
  settings = {
    gopls = {
      gofumpt = true,
      staticcheck = true,
      analyses = {
        nilness = true,
        shadow = true,
        unusedparams = true,
        unusedwrite = true,
      },
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
    },
  }
}
