return {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			terminalColors = true,
			transparent = true,
			theme = "dragon",
		})

		vim.cmd("colorscheme kanagawa-dragon")
	end,
}
