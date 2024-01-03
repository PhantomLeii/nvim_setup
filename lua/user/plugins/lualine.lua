return {
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- dependencies = {
    --   'codota/tabnine-nvim',
    -- },
    opts = {
      options = {
        theme = "catppuccin",
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        globalstatus = true,
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'filename', 'branch' },
        lualine_c = { 'fileformat' },
        lualine_x = { 'tabnine' },
        lualine_y = { 'filetype', 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    },
  },
}
