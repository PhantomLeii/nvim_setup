local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({

  require "plugins.configs.colorschemes.catppuccin-mocha",
  require "plugins.configs.nvimTree",
  require "plugins.configs.telescope",
  require "plugins.configs.lualine",
  require "plugins.configs.autoPairs",

  -- LSP
  {
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
      local lsp = require("lsp-zero")
      lsp.extend_lspconfig()

      lsp.preset("recommended")

      lsp.set_preferences({
        set_lsp_keymaps = false,
      })

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "html",
          "cssls",
          "tsserver",
          "tailwindcss",
          "stylelint_lsp",
          "eslint",
          "marksman",
          "astro",

          "rust_analyzer",
          "pylyzer",

          "solang",
          
          "bashls",
          "lua_ls",
        },
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
})

