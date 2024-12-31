return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = "catppuccin",
        -- theme = "auto",
        globalstatus = true,
        component_separators = "",
        disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
      },
      sections = {
        lualine_a = {"mode"},
        lualine_b = {"branch", 'diff'},
        lualine_c = {
          {
            "filename",
            file_status = true,
            newfile_status = false,
            path = 1,
            shorting_target = 40,
            symbols = {
              modified = "",
              readonly = "",
              unnamed = "",
              newfile = "",
            },
          },
        },
        lualine_x = {
          {
            "buffers",
            show_filename_only = true,
            hide_filename_extension = true,
            show_modified_status = true,
            mode = 0,
            symbols = {
              modified = " ●",
              alternate_file = "",
              directory =  "",
            },
          },
        },
        lualine_y = {"progress", 'searchcount'},
        lualine_z = {
          {
            "filetype",
            colored = false,
            icon_only = false,
            icon = { align = "left" },
          },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          {
            "filename",
            file_status = true,
            newfile_status = false,
            path = 1,
            shorting_target = 40,
            symbols = {
              modified = "",
              readonly = "",
              unnamed = "",
              newfile = "",
            },
          },
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      extensions = {
        "fzf",
        "mason",
        "neo-tree",
      },
    },
  },
}
