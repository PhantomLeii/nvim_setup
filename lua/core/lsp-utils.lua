local M = {}

local nmap = function(keys, func, desc)
  if desc then
    desc = 'LSP: ' .. desc
  end

  vim.keymap.set('n', keys, func, { buffer = true, desc = desc })
end

M.on_attach = function(_, bufnr)
  nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
  nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

  nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
  nmap('gs', vim.lsp.buf.signature_help, '[G]et [S]ignature help')
  nmap('<leader>gD', vim.lsp.buf.declaration, '[G]oto Type [D]efinition')
  nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
  nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
  nmap('<leader>fm', vim.lsp.buf.format, '[F]or[m]at Code')
end

return M
