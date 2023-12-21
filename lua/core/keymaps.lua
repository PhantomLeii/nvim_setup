-- Map space as leader key
vim.g.mapleader=" "
vim.g.maplocalleader=" "

local opts = {
    essen={ noremap=true, silent=true },
    wrapOpt={ expr=true, silent=true },
    silent={ silent=true },
    noOpt={},
}

local function map(m, k, v, opt, desc)
    if string.len(desc) < 1 then
        vim.keymap.set(m, k, v, opt)
    else
        opt = { ['desc']=desc, silent=true }
        vim.keymap.set(m, k, v, opt)
    end
end

-- Insert mode
map('i', 'jj', '<ESC>', opts['essen'], '')      -- tap 'j' twice to toggle normal mode
map('i', 'vv', '<ESC>v', opts['essen'], '')     -- tap 'v' twice to toggle visual mode
map('i', 'VV', '<ESC>V', opts['essen'], '')     -- tap 'V' twice to toggle Visual-line mode

-- Normal mode
map('n', '[d', vim.diagnostic.goto_prev, opts['noOpts'], 'Got to previous diagnostic')
map('n', ']d', vim.diagnostic.goto_next, opts['noOpts'], 'Go to next diagnostic')
map('n', '<leader>sv', '<C-w>v', opts['silent'], "Split Vertically")
map('n', '<leader>sh', '<C-w>s', opts['silent'], 'Split Horizonally')
map('n', '<leader>e', '<C-w>=', opts['silent'], 'Split Equally')
map('n', '<leader>sx', '<cmd>close<CR>', opts['silent'], 'Split close')
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", opts['wrapOpt'], '')
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", opts['wrapOpt'], '')
map('n', '<leader>x', ':bd<CR>', opts['essen'], 'Close current buffer')
map('n', '<leader>c', ':bn<CR>', opts['essen'], 'Next buffer')
map('n', '<leader>z', ':bp<CR>', opts['essen'], 'Previous buffer')
map("n", "<C-h>", "<C-w>h", opts['essen'], 'Navigate to left window')
map("n", "<C-j>", "<C-w>j", opts['essen'], 'Navigate to below window')
map("n", "<C-k>", "<C-w>k", opts['essen'], 'Navigate to above window')
map("n", "<C-l>", "<C-w>l", opts['essen'], 'Navigate to right window')
map('n', '<leader>q', '<cmd>q!<CR>', opts['essen'], 'Forcefully quit')
map('n', '<leader>w', '<cmd>w<CR>', opts['essen'], 'Write changes o file')
map('n', '<leader>a', '<cmd>keepjumps normal! ggVG<CR>', opts['noOpts'],'Select all text in current buffer')