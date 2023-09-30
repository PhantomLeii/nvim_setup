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

  -- Nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
    "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup({
        disable_netrw = true,
        sort = {
          sorter = "case_sensitive",
          files_first = true,
        },
        view = {
          side = "right",
        },
        renderer = {
          full_name = true,
          root_folder_label = ":h",
          indent_markers = {
            enable = true,
          },
        },
      })
    end
  },

  --Colorscheme [Catppuccin]
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
        styles = {
          keywords = { "italic" },
        },
      })

      vim.cmd.colorscheme "catppuccin"
    end
  }, 

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.3",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "sharkdp/fd",
    },
    config = function()
      require("telescope").setup({})
    end
  },

  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      opt = true,
    },
    config = function()
      require("lualine").setup({
        options = {
          icons_enabled = true,
          component_separators = "|",
          section_separators = { left = '', right = '' },
          globalstatus = true,
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff" },
          lualine_c = { "filename" },

          lualine_x = { "diagnostics" },
          lualine_y = {},
          lualine_z = { "filetype", "fileformat" },
        },
        tabline = {
          lualine_a = { "tabs" },
          lualine_b = { "windows" },
          lualine_x = { "buffers" },
          lualine_y = { "hostname" },
        },
      })
    end
  },

  -- Auto-pairs
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({
        disable_in_replace_mode = false,
      })
    end
  },

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

