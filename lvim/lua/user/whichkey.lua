-------------------------------
-- Custom whichkey shortcuts --
-------------------------------

-- Window management
lvim.builtin.which_key.mappings["v"] = { "<cmd>vsplit<cr>", "vsplit" }

-- Git
-- lvim.builtin.which_key.mappings["g"] = {
--     g = { "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle(12000)<cr>", "Lazygit" },
-- }
