require('core.utils')                                       -- include global utils

-- Imports
--

Lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'     -- Define lazy path
Lazy.opts = {}                                              -- Define lazy options

Lazy.setup({
    Load('plugins.colorscheme'),
    -- Load('plugins.neodev'),
})