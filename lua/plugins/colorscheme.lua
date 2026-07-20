return {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    lazy = false,

    config = function()
        local c = require("vscode.colors").get_colors()

        require("vscode").setup({
            transparent = true,
            terminal_colors = true,
            italic_comments = true,
            disable_nvimtree_bg = true,

            group_overrides = {
                NormalFloat = {
                    fg = c.vscFront,
                    bg = c.vscPopupBack,
                },

                FloatBorder = {
                    fg = c.vscAccentBlue,
                    bg = c.vscPopupBack,
                },

                FloatTitle = {
                    fg = c.vscAccentBlue,
                    bg = c.vscPopupBack,
                    bold = true,
                },

                SignColumn = { bg = "NONE" },
                FoldColumn = { bg = "NONE" },
                LineNr = { bg = "NONE" },
                CursorLineNr = { bg = "NONE" },

                TabLine = {
                    bg = "NONE",
                },

                TabLineFill = {
                    bg = "NONE",
                },

                TabLineSel = {
                    bg = "NONE",
                },

                BufferLineFill = {
                    bg = "NONE",
                },

                BufferLineBackground = {
                    bg = "NONE",
                },

                BufferLineBufferVisible = {
                    bg = "NONE",
                },

                BufferLineBufferSelected = {
                    bg = "NONE",
                    bold = true,
                },

                BufferLineSeparator = {
                    fg = c.vscBack,
                    bg = "NONE",
                },

                BufferLineSeparatorVisible = {
                    fg = c.vscBack,
                    bg = "NONE",
                },

                BufferLineSeparatorSelected = {
                    fg = c.vscBack,
                    bg = "NONE",
                },

                BufferLineIndicatorSelected = {
                    fg = c.vscAccentBlue,
                    bg = "NONE",
                },

                LazyNormal = {
                    fg = c.vscFront,
                    bg = c.vscPopupBack,
                },

                MasonNormal = {
                    fg = c.vscFront,
                    bg = c.vscPopupBack,
                },

                Pmenu = {
                    fg = c.vscFront,
                    bg = c.vscPopupBack,
                },

                PmenuSel = {
                    fg = c.vscUiBase,
                    bg = c.vscAccentBlue,
                    bold = true,
                },

                PmenuSbar = {
                    bg = c.vscScrollBar,
                },

                PmenuThumb = {
                    bg = c.vscScrollBarHover,
                },

                TelescopeNormal = {
                    bg = c.vscPopupBack,
                },

                TelescopeBorder = {
                    fg = c.vscPopupBack,
                    bg = c.vscPopupBack,
                },

                TelescopePromptNormal = {
                    bg = c.vscPopupBack,
                },

                TelescopePromptBorder = {
                    fg = c.vscPopupBack,
                    bg = c.vscPopupBack,
                },

                TelescopePromptTitle = {
                    fg = c.vscAccentBlue,
                    bg = c.vscPopupBack,
                    bold = true,
                },

                TelescopeResultsNormal = {
                    fg = c.vscFront,
                    bg = c.vscPopupBack,
                },

                TelescopeResultsBorder = {
                    fg = c.vscPopupBack,
                    bg = c.vscPopupBack,
                },

                TelescopePreviewNormal = {
                    bg = c.vscPopupBack,
                },

                TelescopePreviewBorder = {
                    fg = c.vscPopupBack,
                    bg = c.vscPopupBack,
                },

                ["@comment"] = { italic = true },
                ["@keyword"] = { italic = false },
                ["@function"] = { italic = false },
                ["@keyword.return"] = { italic = false },
                ["@keyword.function"] = { italic = false },
            }

        })

        vim.cmd.colorscheme("vscode")
    end,
}
