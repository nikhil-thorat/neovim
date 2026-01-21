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

		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })

		vim.cmd("colorscheme gruvbox")
	end,
}
