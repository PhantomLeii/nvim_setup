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
}

vim.opt.shortmess:append "c"

for k, v in pairs( options ) do
	vim.opt[k] = v
end
