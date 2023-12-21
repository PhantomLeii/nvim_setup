-- Map space as leader key
vim.g.mapleader=" "
vim.g.maplocalleader=" "

-- Disable netrw
vim.g.loaded_netrw=1
vim.g.loaded_netrwPlugin=1

local opts = {
    backup=false,                           -- create backup file
    clipboard="unnamedplus",                -- access system clipboard
    cmdheight=2,                            -- neovim cmd display height
    completeopt={ "menuone", "noselect" },  -- just for cmp
    conceallevel=0,                         -- `` visibility in markdown files
    fileencoding="utf-8",                   -- charset of file
    hidden=true,                            -- keep & open multiple buffers
    hlsearch=true,                          -- highlight matches on search
    ignorecase=true,                        -- case insensitvity in searches
    mouse="a",                              -- allow mouse usage
    pumheight=10,                           -- popup menu height
    showtabline=2,                          -- always show tabs
    smartcase=true,                         -- smart case
    smartindent=true,                       -- allow smart indenting
    splitbelow=true,                        -- force hoizontal splits
    splitright=true,                        -- for vertical splits o right
    swapfile=false,                         -- disallow swap file creation
    timeoutlen=100,                         -- delay for mapped sequences
    undofile=true,                          -- allow persistant undo
    updateime=300,                          -- faster completions
    writebackup=false,                      -- disallow swap file editing
    expandtab=true,                         -- convert tabs to spaces
    shiftwidth=2,                           -- spaces for each indentation
    tabstop=2,                              -- insert 2 spaces for tab
    cursorline=true,                        -- highlight focused line
    number=true,                            -- set numbered lines
    relativenumer=true,                     -- set relative numbered lines
    numberwidth=4,                          -- number column width
    signcolumn="yes",                       -- always show sign column
    wrap=true,                              -- wrap long lines
    breakindent=true,                       -- allow smart wrapping (indent wrapped lines)
    scrolloff=8,                            -- leave space while scrolling
    guifont="JetbrainsMono NF:h17",         -- font used in grafical neovim applicaions
}

vim.opt.shortmess:append "c"

for k, v in pairs(opts) do
    vim.opt[k] = v
end