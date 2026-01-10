vim.g.mapleader = " "

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("i", "jk", "<Esc>", opts)
map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

map("n", "<leader>sv", "<cmd>vsplit<CR>", opts)
map("n", "<leader>sh", "<cmd>split<CR>", opts)

map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

map("n", "<leader>bn", "<cmd>bnext<CR>", opts)
map("n", "<leader>bp", "<cmd>bprevious<CR>", opts)
map("n", "<leader>bd", "<cmd>bdelete<CR>", opts)

map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

map("x", "p", '"_dP', opts)
map({ "n", "v" }, "<leader>y", '"+y', opts)
map("n", "<leader>Y", '"+Y', opts)

map("n", "<leader>w", "<cmd>w<CR>", opts)
map("n", "<leader>r", "<cmd>source $MYVIMRC<CR>", opts)

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>e", "<cmd>Neotree toggle<CR>", opts)

map("n", "<leader>q", vim.diagnostic.setloclist, opts)

map("n", "<Esc>", "<cmd>nohl<CR>", opts)
