return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			terminal_colors = true,
			contrast = "hard",
			palette_overrides = {},
			transparent_mode = true,
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
