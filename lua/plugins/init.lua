local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({

  require "plugins.configs.colorschemes.catppuccin-mocha",
  require "plugins.configs.nvimTree",
  require "plugins.configs.telescope",
  require "plugins.configs.lualine",
  require "plugins.configs.autoPairs",
  require "plugins.configs.lsp-zero",

})

