return {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
    config = true,
    init = function ()
        vim.cmd.colorscheme "gruvbox"
    end
}