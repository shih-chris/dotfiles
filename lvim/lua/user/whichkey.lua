-------------------------------
-- Custom whichkey shortcuts --
-------------------------------

-- Window management
lvim.builtin.which_key.mappings["v"] = { "<cmd>vsplit<cr>", "vsplit" }

-- Git
-- lvim.builtin.which_key.mappings["g"] = {
--     g = { "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle(12000)<cr>", "Lazygit" },
-- }

-- Run Programs
-- Markdown preview
lvim.builtin.which_key.mappings["r"] = {
    name = " Run",

    -- Python REPL
    p = {
        "<cmd>TermExec cmd='python' open=0<CR><cmd>ToggleTermSendCurrentLine<CR><cmd>ToggleTerm<CR>",
        "Python REPL",
    },
    -- Python REPL
    m = {
        "<Plug>MarkdownPreviewToggle",
        "Markdown Preview"
    }
}

