return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", opt=true },
  
  config = function()
    require "lualine".setup {
      options = {
        icons_enabled = true,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        globalstatus = true,
      },

      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { "filename" },

        lualine_x = { "diagnostics" },
        lualine_y = {},
        lualine_z = { "filetype", "fileformat" },
      },
      winbar = {
        lualine_a = { "windows" },
      },
    }
  end
}
