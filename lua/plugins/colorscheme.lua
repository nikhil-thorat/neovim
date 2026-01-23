return {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			terminalColors = true,
			transparent = true,
			theme = "dragon",
			colors = {
				theme = {
					all = {
						ui = {
							bg_gutter = "none",
						},
					},
				},
			},
			overrides = function(colors)
				return {
					NormalFloat = { bg = "none" },
					FloatBorder = { bg = "none" },
					FloatTitle = { bg = "none" },
					CursorLine = { bg = "none" },
					CursorLineNr = { bg = "none" },
				}
			end,
		})

		vim.cmd("colorscheme kanagawa-dragon")
	end,
}
