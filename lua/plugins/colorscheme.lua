return {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    lazy = false,

    config = function()
        local rose = require("rose-pine.palette")

        require("rose-pine").setup({
            variant = "main",

            disable_background = true,
            disable_float_background = false,

            styles = {
                italic = true,
            },

            highlight_groups = {
                NormalFloat = {
                    fg = rose.text,
                    bg = rose.surface,
                },

                FloatBorder = {
                    fg = rose.foam,
                    bg = rose.surface,
                },

                FloatTitle = {
                    fg = rose.foam,
                    bg = rose.surface,
                    bold = true,
                },

                SignColumn = {
                    bg = "NONE",
                },

                FoldColumn = {
                    bg = "NONE",
                },

                LineNr = {
                    bg = "NONE",
                },

                CursorLineNr = {
                    bg = "NONE",
                },

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
                    fg = rose.base,
                    bg = "NONE",
                },

                BufferLineSeparatorVisible = {
                    fg = rose.base,
                    bg = "NONE",
                },

                BufferLineSeparatorSelected = {
                    fg = rose.base,
                    bg = "NONE",
                },

                BufferLineIndicatorSelected = {
                    fg = rose.foam,
                    bg = "NONE",
                },

                LazyNormal = {
                    fg = rose.text,
                    bg = rose.surface,
                },

                MasonNormal = {
                    fg = rose.text,
                    bg = rose.surface,
                },

                Pmenu = {
                    fg = rose.text,
                    bg = rose.surface,
                },

                PmenuSel = {
                    fg = rose.base,
                    bg = rose.iris,
                    bold = true,
                },

                PmenuSbar = {
                    bg = rose.highlight_med,
                },

                PmenuThumb = {
                    bg = rose.highlight_high,
                },

                TelescopeNormal = {
                    bg = rose.surface,
                },

                TelescopeBorder = {
                    fg = rose.surface,
                    bg = rose.surface,
                },

                TelescopePromptNormal = {
                    bg = rose.surface,
                },

                TelescopePromptBorder = {
                    fg = rose.surface,
                    bg = rose.surface,
                },

                TelescopePromptTitle = {
                    fg = rose.foam,
                    bg = rose.surface,
                    bold = true,
                },

                TelescopeResultsNormal = {
                    fg = rose.text,
                    bg = rose.surface,
                },

                TelescopeResultsBorder = {
                    fg = rose.surface,
                    bg = rose.surface,
                },

                TelescopePreviewNormal = {
                    bg = rose.surface,
                },

                TelescopePreviewBorder = {
                    fg = rose.surface,
                    bg = rose.surface,
                },

                ["@comment"] = {
                    fg = rose.muted,
                    italic = true,
                },

                ["@keyword"] = {
                    italic = false,
                },

                ["@function"] = {
                    italic = false,
                },

                ["@keyword.return"] = {
                    italic = false,
                },

                ["@keyword.function"] = {
                    italic = false,
                },
            },
        })

        vim.cmd.colorscheme("rose-pine")
    end,
}
