<<<<<<< HEAD
local options = {
	ignorecase = true,
	smartcase = true,
	scrolloff = 8,
	wrap = true,
	sidescrolloff = 8,
	cmdheight = 2,
	number = true,
	relativenumber = true,
	numberwidth = 2,
	conceallevel = 2,
	hlsearch = true,
	termguicolors = true,
	cursorline = true,
	hidden = true,
	splitbelow = true,
	splitright = true,
	title = true,
	mouse = "a",
	ruler = false,
	clipboard = "unnamedplus",
	undofile = true,
	completeopt = { "menuone", "noselect" },
	tabstop = 2,
	shiftwidth = 2,
	smarttab = true,
	softtabstop = 2,
	expandtab = true,
	autoindent = true,
	smartindent = true,
	timeoutlen = 400,
	writebackup = false,
	wildmenu = true,
	signcolumn = "yes",
  breakindent = true,
=======
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
    timeoutlen=300,                         -- delay for mapped sequences
    undofile=true,                          -- allow persistant undo
    updatetime=300,                         -- faster completions
    writebackup=false,                      -- disallow swap file editing
    expandtab=true,                         -- convert tabs to spaces
    shiftwidth=2,                           -- spaces for each indentation
    tabstop=2,                              -- insert 2 spaces for tab
    cursorline=true,                        -- highlight focused line
    number=true,                            -- set numbered lines
    relativenumber=true,                    -- set relative numbered lines
    numberwidth=4,                          -- number column width
    signcolumn="yes",                       -- always show sign column
    wrap=true,                              -- wrap long lines
    breakindent=true,                       -- allow smart wrapping (indent wrapped lines)
    scrolloff=8,                            -- leave space while scrolling
    guifont="JetbrainsMono:h17",            -- font used in grafical neovim applicaions
    background="dark",                      -- Background in dark mode
    termguicolors=true,                     -- enable 256 colors
>>>>>>> development
}

vim.opt.shortmess:append "c"

for k, v in pairs(opts) do
    vim.opt[k] = v
end