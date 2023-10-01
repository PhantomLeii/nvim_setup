local settings = {
  -- Nvim-tree
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
  "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      disable_netrw = true,
      sort = {
        sorter = "case_sensitive",
      },
      renderer = {
        full_name = true,
        root_folder_label = ":h",
        indent_markers = {
          enable = true,
        },
      },
    })
  end
}

return settings
