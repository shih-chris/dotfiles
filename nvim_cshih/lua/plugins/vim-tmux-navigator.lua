return {
  {
    "christoomey/vim-tmux-navigator",
    init = function()
      if vim.env.HERDR_ENV == "1" then
        vim.g.tmux_navigator_no_mappings = 1
      end
    end,
    lazy = false,
  },
}
