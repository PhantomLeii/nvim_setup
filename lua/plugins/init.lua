require('core.utils')                                       -- include global utils

Lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'     -- Define lazy path
Lazy.opts = {}                                              -- Define lazy options

Lazy.setup({
    require('plugins.colorscheme'),
    require('plugins.neodev'),
    require('plugins.comment'),
})