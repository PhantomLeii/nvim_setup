local configs = {
  require "plugins.configs.colorscheme",        -- import colorscheme config
  require "plugins.configs.nvim-tree",          -- import nvim-tree config
  require "plugins.configs.telescope",          -- import telescope config
  require "plugins.configs.lualine",            -- import lualine config
  require "plugins.configs.auto-pairs",         -- import autopairs config

  require "plugins.configs.lsp-zero"            -- import lsp-zero config
}

return configs
