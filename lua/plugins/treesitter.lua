return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",

	opts = {
		ensure_installed = {
			"go",
			"lua",
			"python",
			"html",
			"css",
			"javascript",
			"typescript",
			"groovy",
		},

		highlight = {
			enable = true,
		},

		indent = {
			enable = true,
		},
	},

	config = function()
		vim.treesitter.language.register("groovy", "Jenkinsfile")
	end,
}
