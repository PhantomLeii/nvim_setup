Lazy = {}

function Lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function Lazy.setup(plugins)
  if vim.g.plugins_ready then
    return
  end

  Lazy.install(Lazy.path)

  vim.opt.rtp:prepend(Lazy.path)

  require('lazy').setup(plugins, Lazy.opts)
  vim.g.plugins_ready = true
end

Load = function (mod)
  package.loaded[mod] = nil
  require(mod)
end