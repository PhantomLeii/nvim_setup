local mason_settings = {
  "williamboman/mason.nvim",
  priority = 900,
  opts = {
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
  },
}


return mason_settings
