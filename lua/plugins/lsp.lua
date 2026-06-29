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
                    "clangd",
                    "lua_ls",
                    "pyright",
                    "gopls",
                    "ts_ls",
                },
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.api.nvim_create_autocmd("LspAttach", {
                desc = "LSP Keybindings",
                callback = function(event)
                    local opts = { buffer = event.buf, silent = true }

                    opts.desc = "LSP Code Action"
                    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

                    opts.desc = "Go to Definition"
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)

                    opts.desc = "Go to References"
                    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

                    opts.desc = "LSP Rename"
                    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                end,
            })

            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            vim.lsp.config("lua_ls", {
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                    },
                },
            })

            vim.lsp.config("clangd", {
                capabilities = capabilities,
            })

            vim.lsp.config("pyright", {
                capabilities = capabilities,
            })

            vim.lsp.config("gopls", {
                capabilities = capabilities,
                settings = {
                    gopls = {
                        semanticTokens = false,
                    }
                }
            })

            vim.lsp.enable({
                "clangd",
                "lua_ls",
                "pyright",
                "gopls",
                "ts_ls",
            })
        end,
    },
}
