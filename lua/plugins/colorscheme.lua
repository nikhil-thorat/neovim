return {
	"stealth-theme",
	dir = "~/.config/nvim/colors",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme stealth]])
	end,
}
