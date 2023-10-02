return {
  on_attach = on_attach,
  capabilities = require "cmp_nvim_lsp".default_capabilities(),
  ["Luc.completion.enable"] = true,
  ["Lua.completion.keywordSnippet"] = "Both",
}
