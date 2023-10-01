local settings = {
  -- Lualine
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    opt = true,
  },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        component_separators = "|",
        section_separators = { left = '', right = '' },
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "filename","branch" },
        lualine_c = { "diff" },

        lualine_x = { "diagnostics" },
        lualine_y = { "filetype" },
        lualine_z = { "fileformat" },
      },
      tabline = {
        lualine_a = { "tabs" },
        lualine_b = { "windows" },
        lualine_c = { "buffers" },
        lualine_y = { "hostname" },
      },
    })
  end
}

return settings
