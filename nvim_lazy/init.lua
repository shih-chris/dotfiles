-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- manually add bigquery sql parser
-- local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
-- parser_config.sql_bigquery = {
--   install_info = {
--     url = "~/projects/tree-sitter-sql-bigquery", -- local path or git repo
--     files = { "src/parser.c", "src/scanner.cc" }, -- note that some parsers also require src/scanner.c or src/scanner.cc
--     -- optional entries:
--     branch = "main", -- default branch in case of git repo if different from master
--     generate_requires_npm = false, -- if stand-alone parser without npm dependencies
--     requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
--   },
--   filetype = "sql", -- if filetype does not match the parser name
-- }
--
-- vim.treesitter.language.register("sql_biquery", "sql") -- the sql filetype will use the sql_bigquery parser and queries.
