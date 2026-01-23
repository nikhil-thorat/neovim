return {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			terminalColors = true,
			transparent = true,
			theme = "dragon",
			overrides = function(colors)
				local theme = colors.theme
				return {
					NormalFloat = { bg = "none" },
					FloatBorder = { bg = "none" },
					FloatTitle = { bg = "none" },
				}
			end,
		})

		vim.cmd("colorscheme kanagawa-dragon")
	end,
}
