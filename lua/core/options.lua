vim.opt.clipboard = "unnamedplus"
vim.opt.hidden = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 400

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.scrolloff = 100
vim.opt.sidescrolloff = 100

vim.opt.number = false
vim.opt.relativenumber = false
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.termguicolors = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.opt.fillchars = { eob = " " }
vim.opt.laststatus = 0
vim.opt.showmode = false
vim.opt.cmdheight = 0

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldenable = false

vim.opt.guicursor = "n-v-i-c:block-Cursor"
vim.cmd("highlight Cursor guifg=#010101 guibg=#FFC799")
