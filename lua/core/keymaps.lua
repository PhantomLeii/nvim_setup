local opts = {
    essen={ noremap=true, silent=true },
    wrapOpt={ expr=true, silent=true },
    silent={ silent=true },
}

local function map(m, k, v, opt)
    vim.keymap.set(m, k, v, opt)
end

-- Insert mode
map('i', 'jj', '<ESC>', opts['essen'])      -- tap 'j' twice to toggle normal mode
map('i', 'vv', '<ESC>v', opts['essen'])     -- tap 'v' twice to toggle visual mode
map('i', 'VV', '<ESC>V', opts['essen'])     -- tap 'V' twice to toggle Visual-line mode

-- Normal mode