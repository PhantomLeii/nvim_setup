return {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        local bufferline = require 'bufferline'
        bufferline.setup {
            options = { bufferline.style_preset.minimal },
        }
    end,
}
