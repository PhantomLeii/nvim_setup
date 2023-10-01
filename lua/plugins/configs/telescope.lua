local settings = {
  -- Telescope
  "nvim-telescope/telescope.nvim",
  tag = "0.1.3",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "sharkdp/fd",
  },
  config = function()
    require("telescope").setup({})
  end
}

return settings
