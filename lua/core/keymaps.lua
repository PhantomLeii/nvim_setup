local opts = {
    essen={ noremap=true, silent=true },
    wrapOpt={ expr=true, silent=true },
    silent={ silent=true },
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
map('i', 'jj', '<ESC>', opts['essen'])      -- tap 'j' twice to toggle normal mode
map('i', 'vv', '<ESC>v', opts['essen'])     -- tap 'v' twice to toggle visual mode
map('i', 'VV', '<ESC>V', opts['essen'])     -- tap 'V' twice to toggle Visual-line mode

-- Normal mode
map('n', '<leader>sv', '<C-w>v', opts['silent'], "Split Vertically")
map('n', '<leader>sh', '<C-w>s', opts['silent'], 'Split Horizonally')
map('n', '<leader>e', '<C-w>=', opts['silent'], 'Split Equally')
map('n', '<leader>sx', '<cmd>close<CR>', opts['silent'], 'Split close')
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", opts['wrapOpt'])
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", opts['wrapOpt'])
map('n', '<leader>x', ':bd<CR>', opts['essen'])
map('n', '<leader>c', ':bn<CR>', opts['essen'])
map('n', '<leader>z', ':bp<CR>', opts['essen'])
map("n", "<C-h>", "<C-w>h", opts['essen'])
map("n", "<C-j>", "<C-w>j", opts['essen'])
map("n", "<C-k>", "<C-w>k", opts['essen'])
map("n", "<C-l>", "<C-w>l", opts['essen'])