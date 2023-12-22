<<<<<<< HEAD
require "core.keymaps"		-- import keymaps module
require "core.options"		-- import options module

-- Bootstrap Lazy
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
=======
-- Clear cache as you load modules
local load = function (mod)
    package.loaded[mod] = nil
    require(mod)
>>>>>>> development
end

<<<<<<< HEAD
-- Plugins
require "lazy".setup {
  require "plugins"       -- import all plugin configs
}
=======
load('core.options')        -- import user options
load('core.keymaps')        -- import user keymaps
load('plugins')             -- import user plugin configs
>>>>>>> development
