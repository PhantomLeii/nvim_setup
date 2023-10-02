local configs = {
  require "plugins.colorscheme",        -- import colorscheme config
  require "plugins.nvim-tree",          -- import nvim-tree config
  require "plugins.telescope",          -- import telescope config
  require "plugins.lualine",            -- import lualine config
  require "plugins.auto-pairs",         -- import autopairs config

  require "plugins.lsp-zero"            -- import lsp-zero config
}

return configs
