local settings = {
  -- Auto-pairs
  "windwp/nvim-autopairs",
  config = function()
    require("nvim-autopairs").setup({
      disable_in_replace_mode = false,
    })
  end
}

return settings
