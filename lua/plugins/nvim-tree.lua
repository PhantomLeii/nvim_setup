return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    require "nvim-tree".setup {
      disable_netrw = true,
      sort = {
        sorter = "case_sensitive",
      },
      renderer = {
        full_name = true,
        indent_markers = { enable=true },
      },
    }
  end
}
