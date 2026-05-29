return {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
        require('kanagawa').setup({
            commentStyle = { italic = true },
            functionStyle = { italic = false },
            keywordStyle = { italic = false },
            statementStyle = { bold = true },
            transparent = true,
            terminalColors = true,
        })
        vim.cmd("colorscheme kanagawa")
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NONE" })
    end
}
