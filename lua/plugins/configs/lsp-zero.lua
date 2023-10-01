local settings = {
  -- LSP
  "VonHeikemen/lsp-zero.nvim",
  event = "VeryLazy",
  dependencies = {
    { "neovim/nvim-lspconfig", event="VeryLazy" },
    { "williamboman/mason.nvim", event="VeryLazy" },
    { "williamboman/mason-lspconfig.nvim", event="VeryLazy" },
    { "hrsh7th/nvim-cmp", event="VeryLazy" },
    { "hrsh7th/cmp-buffer", event="VeryLazy" },
    { "hrsh7th/cmp-path", event="VeryLazy" },
    { "hrsh7th/cmp-nvim-lua", event="VeryLazy" },
    { "Jezda1337/cmp_bootstrap", event="VeryLazy" },
    { "mfussenegger/nvim-dap", event="VeryLazy" },
    { "nvim-lua/plenary.nvim", event="VeryLazy" },
  },
  config = function()
    local lsp_zero = require("lsp-zero")

    lsp_zero.on_attach(function(client, bufnr)
      lsp_zero.default_keymaps({buffer=bufnr})
    end)

    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "pyright",
        "rust-analyzer",
        "bash-language-server",
        "marksman",
        "lua-language-server",
        "typescript-language-server",
        "tailwindcss-language-server",
        "css-lsp",
        "emmet-ls",
        "html-lsp",
      },
      require "plugins.lsp"
    })

    local cmp = require("cmp")
    local cmp_action = require("lsp-zero").cmp_action()
    local cmp_select = { behavior=cmp.SelectBehavior.Select }

    cmp.setup({
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.complete(),
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-y>"] = cmp.mapping.confirm({ select=true }),

        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
      })
    })
  end
}

return settings
