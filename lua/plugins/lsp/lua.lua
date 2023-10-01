local lua_settings = require "lspconfig".lua_ls.setup({
  settings = {
    ["Lua.completion.enable"] = true,
    ["Lua.completion.keywordSnippet"] = "Both",
  },
})

return lua_settings
