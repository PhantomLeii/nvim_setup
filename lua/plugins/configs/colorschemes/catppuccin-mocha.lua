local settings = {
  --Colorscheme [Catppuccin]
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      styles = {
        keywords = { "italic" },
      },
    })

    vim.cmd.colorscheme "catppuccin"
  end
}

return settings
