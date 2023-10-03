local opts = { noremap=true, silent=true }

local function map(m, k, v)
  vim.keymap.set(m, k, v, opts)
end

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal Mode
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "<C-Up>", ":resize -2<CR>")
map("n", "<C-Down>", ":resize +2<CR>")
map("n", "<C-Left>", ":vertical resize +2<CR>")
map("n", "<C-Right>", ":vertical resize -2<CR>")

map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprevious<CR>")
map("n", "<C-x>", ":bdelete<CR>")

map("n", "<A-j>", "<ESC>:m .+1<CR>==gi")
map("n", "<A-k>", "<ESC>:m .-2<CR>==gi")

map("n", "<leader>w", ":w<CR>")
map("n", "<leader>x", ":w<CR>:bdelete<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>Q", ":q!<CR>")
map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<leader>t", ":terminal<CR>")

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope live_grep<CR>")
map("n", "<leader>fb", ":Telescope buffers<CR>")
map("n", "<leader>fs", ":Telescope git_status<CR>")
map("n", "<leader>fe", ":Telescope git_branches<CR>")

-- Insert Mode
map("i", "jj", "<ESC>")
map("i", "vv", "<ESC>v")
map("i", "<C-j>", "<ESC>}i")
map("i", "<C-k>", "<ESC>{i")

-- Visual Mode
map("v", "<", "<gv")
map("v", ">", ">gv")

map("v", "<A-j>", ":m .+1<CR>==")
map("v", "<A-k>", ":m .-2<CR>==")
