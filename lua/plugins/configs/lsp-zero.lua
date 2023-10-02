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
    {"L3MON4D3/LuaSnip", event="VeryLazy"},
    {"hrsh7th/cmp-nvim-lsp", event="VeryLazy"},
    {"Jezda1337/cmp_bootstrap", event="VeryLazy"},
    {"mfussenegger/nvim-dap", event="VeryLazy"},
    {"nvim-lua/plenary.nvim", event="VeryLazy"},
  },

  config = function()
    local lsp_zero = require "lsp-zero"
    lsp_zero.on_attach(function(client, bufnr)
      lsp_zero.default_keymaps({buffer=bufnr})
    end)

    require "mason".setup()
    require "mason-lspconfig".setup {
      ensure_installed = {
        "bashls",
        "cssls",
        "emmet_ls",
        "html",
        "jsonls",
        "tsserver",
        "ltex",
        "lua_ls",
        "marksman",
        "pyright",
        "sqlls",
        "taplo",
        "tailwindcss",
        "rust_analyzer",
      },

      handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
          local capabilities = require("cmp_nvim_lsp").default_capabilities()
          local lua_opts = require "lsp.configs.lua_ls"
          require "lspconfig".lua_ls.setup(lua_opts)
        end,
      },
    }
    local cmp = require "cmp"
    local cmp_select = { behavior=cmp.SelectBehavior.Select }

    cmp.setup {
      sources = {
        { name="path" },
        { name="nvim_lsp" },
        { name="buffer" },
      },
      widow = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.confirm({ select=true }),
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),

        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
      })
    }
  end
}
