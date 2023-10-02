return {
  "VonHeikemen/lsp-zero.nvim",
  dependencies = {
    {"neovim/nvim-lspconfig", event="VeryLazy"},
    {"williamboman/mason.nvim", event="VeryLazy"},
    {"williamboman/mason-lspconfig", event="VeryLazy"},
    {"hrsh7th/nvim-cmp", event="VeryLazy"},
    {"hrsh7th/cmp-buffer", event="VeryLazy"},
    {"hrsh7th/cmp-path", event="VeryLazy"},
    {"hrsh7th/cmp-nvim-lua", event="VeryLazy"},
    {"Jezda1337/cmp_bootstrap", event="VeryLazy"},
    {"mfussenegger/nvim-dap", event="VeryLazy"},
    {"nvim-lua/plenary.nvim", event="VeryLazy"},
  },

  config = function()
    local lsp_zero = require "lsp-zero"
    lsp_zero.setup()
  end
}
