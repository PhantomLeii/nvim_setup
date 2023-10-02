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
          CAPABILITIES = require("cmp_nvim_lsp").default_capabilities()
          local lua_opts = require "lsp.configs.lua_ls"
          require "lspconfig".lua_ls.setup(lua_opts)
        end,
        bashls = function ()
          require "lspconfig".bashls.setup({ capabilities=CAPABILITIES })
        end,
        cssls = function ()
          require "lspconfig".cssls.setup({ capabilities=CAPABILITIES })
        end,
        emmet_ls = function ()
          require "lspconfig".emmet_ls.setup({ capabilities=CAPABILITIES })
        end,
        html = function ()
          require "lspconfig".html.setup({ capabilities=CAPABILITIES })
        end,
        jsonls = function ()
          require "lspconfig".jsonls.setup({ capabilities=CAPABILITIES })
        end,
        tsserver = function ()
          require "lspconfig".tsserver.setup({ capabilities=CAPABILITIES })
        end,
        marksman = function ()
          require "lspconfig".marksman.setup({ capabilities=CAPABILITIES })
        end,
        pyright = function ()
          require "lspconfig".pyright.setup({ capabilities=CAPABILITIES })
        end,
        sqlls = function ()
          require "lspconfig".sqlls.setup({ capabilities=CAPABILITIES })
        end,
        taplo = function ()
          require "lspconfig".taplo.setup({ capabilities=CAPABILITIES })
        end,
        tailwindcss = function ()
          require "lspconfig".tailwindcss.setup({ capabilities=CAPABILITIES })
        end,
        rust_analyzer = function ()
          require "lspconfig".rust_analyzer.setup({ capabilities=CAPABILITIES })
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
