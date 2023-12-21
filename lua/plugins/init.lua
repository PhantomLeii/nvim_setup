require('core.utils')                                       -- include global utils

Lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'     -- Define lazy path
Lazy.opts = {}                                              -- Define lazy options

Lazy.setup({
    require('plugins.colorscheme'),
    require('plugins.neodev'),
    require('plugins.comment'),

    'tpope/vim-sleuth',                                     -- detects tabstop & shiftwidth automatically
    'christoomey/vim-tmux-navigator',                       -- vim navigator
    'szw/vim-maximizer',                                    -- maximise & restore current window
    { 'folke/which-key.nvim',  opts = {} },                 -- show pending keybinds

    {
        'lukas-reineke/indent-blankline.nvim',              -- add indentation guides even on blank lines
        main = "ibl",
    },
    
    require('plugins.nvim-tree'),
}) 