return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function()
      local logo = [[

██╗  ██╗███████╗██╗     ██╗      ██████╗      ██████╗██╗  ██╗██████╗ ██╗███████╗
██║  ██║██╔════╝██║     ██║     ██╔═══██╗    ██╔════╝██║  ██║██╔══██╗██║██╔════╝
███████║█████╗  ██║     ██║     ██║   ██║    ██║     ███████║██████╔╝██║███████╗
██╔══██║██╔══╝  ██║     ██║     ██║   ██║    ██║     ██╔══██║██╔══██╗██║╚════██║
██║  ██║███████╗███████╗███████╗╚██████╔╝    ╚██████╗██║  ██║██║  ██║██║███████║
╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝      ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚══════╝

        ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      local opts = {
        theme = "doom",
        hide = {
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = "Telescope find_files",                                     desc = " [s]earch files",    icon = " ", key = "s" },
          { action = "ene | startinsert",                                        desc = " [n]ew file",        icon = " ", key = "n" },
          { action = "Telescope oldfiles",                                       desc = " [r]ecent files",    icon = " ", key = "r" },
          { action = "Telescope live_grep",                                      desc = " Find [t]ext",       icon = " ", key = "t" },
          { action = "Telescope projects",                                       desc = " [p]rojects",        icon = " ", key = "p" },
          { action = 'lua require("persistence").load()',                        desc = " [R]estore session", icon = " ", key = "R" },
          { action = "Lazy",                                                     desc = " [l]azy",            icon = "󰒲 ", key = "l" },
          { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " [c]onfig",          icon = " ", key = "c" },
        },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      -- close Lazy and re-open when the dashboard is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          pattern = "DashboardLoaded",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      return opts
    end,
  },
}
