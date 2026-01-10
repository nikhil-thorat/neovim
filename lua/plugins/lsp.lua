return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pyright",
					"gopls",
				},
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
					},
				},
			})

			vim.lsp.config("pyright", {
				capabilities = capabilities,
			})

			vim.lsp.config("gopls", {
				capabilities = capabilities,
			})

			vim.lsp.enable({
				"lua_ls",
				"pyright",
				"gopls",
				"ts_ls",
			})
		end,
	},
}
