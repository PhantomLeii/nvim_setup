vim.g.mapleader = " "
vim.g.maplocalleader = " "

local function map(m, k, v)
  vim.api.nvim_set_keymap(m, k, v, { noremap=true, silent=true })
end

map("n", "<leader>a", "ggVG")                       -- Select all
map("n", "<leader>w", ":w<CR>")                     -- Write to disk
map("n", "<leader>q", ":q!<CR>")                    -- Quit buffer

map("n", "<C-h>", "<C-w>h")                         -- Navigate left
map("n", "<C-j>", "<C-w>j")                         -- Navigate down
map("n", "<C-k>", "<C-w>k")                         -- Navigate up
map("n", "<C-l>", "<C-w>l")                         -- Navigate right

map("n", "<C-Up>", ":resize -2<CR>")                -- Increase upwards
map("n", "<C-Down>", ":resize +2<CR>")              -- Increase downwards
map("n", "<C-Left>", ":vertical resize -2<CR>")     -- Increase leftwards
map("n", "<C-Right>", ":vertical resize +2<CR>")    -- Increase rightwards

map("n", "<leader>c", ":bnext<CR>")                 -- Next buffer
map("n", "<leader>z", ":bprevious<CR>")             -- Previous buffer

map("n", "<A-j>", "<Esc>:m .+1<CR>==gi")            -- Move text down
map("n", "<A-k>", "<Esc>:m .-2<CR>==gi")            -- Move text up

map("i", "jj", "<ESC>")                             -- Switch to normal mode
map("i", "vv", "<ESC>v")                            -- Switch to visual mode
map("i", "cc", "<ESC>vbdi")                         -- delete previous word

map("v", "<", "<gv")                                -- Unindent
map("v", ">", ">gv")                                -- Indent
