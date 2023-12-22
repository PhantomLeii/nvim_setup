return {
    'numToStr/Comment.nvim',
    init = function()
        vim.keymap.set('n', "<C-/>", require('Comment.api').toggle.linewise.current, { desc = "Toggle Comment" })
        vim.keymap.set('v', "<C-/>", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
            { desc = "Toggle Comment" })
    end,
    config = function(_, opts)
        require("Comment").setup(opts)
    end
}

