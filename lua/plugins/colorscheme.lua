return {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    lazy = false,

    config = function()
        local colors = require("kanagawa.colors").setup({ theme = "dragon" })

        require("kanagawa").setup({
            theme = "dragon",
            transparent = true,
            terminalColors = true,

            commentStyle = { italic = true },
            keywordStyle = {},
            functionStyle = {},

            overrides = function()
                return {
                    NormalFloat = {
                        fg = colors.theme.ui.fg,
                        bg = colors.theme.ui.bg_m3,
                    },

                    FloatBorder = {
                        fg = colors.palette.dragonBlue,
                        bg = colors.theme.ui.bg_m3,
                    },

                    FloatTitle = {
                        fg = colors.palette.dragonPink,
                        bg = colors.theme.ui.bg_m3,
                        bold = true,
                    },

                    SignColumn = { bg = "NONE" },
                    FoldColumn = { bg = "NONE" },
                    LineNr = { bg = "NONE" },
                    CursorLineNr = { bg = "NONE" },

                    LazyNormal = {
                        bg = colors.theme.ui.bg_m3,
                        fg = colors.theme.ui.fg_dim,
                    },

                    MasonNormal = {
                        bg = colors.theme.ui.bg_m3,
                        fg = colors.theme.ui.fg_dim,
                    },

                    Pmenu = {
                        fg = colors.theme.ui.fg,
                        bg = colors.theme.ui.bg_p1,
                    },

                    PmenuSel = {
                        fg = colors.theme.ui.bg,
                        bg = colors.palette.dragonBlue,
                    },

                    PmenuSbar = {
                        bg = colors.theme.ui.bg_p2,
                    },

                    PmenuThumb = {
                        bg = colors.theme.ui.bg_p1,
                    },

                    TelescopeTitle = {
                        fg = colors.palette.dragonPink,
                        bold = true,
                    },

                    TelescopePromptNormal = {
                        bg = colors.theme.ui.bg_p1,
                    },

                    TelescopePromptBorder = {
                        fg = colors.theme.ui.bg_p1,
                        bg = colors.theme.ui.bg_p1,
                    },

                    TelescopeResultsNormal = {
                        fg = colors.theme.ui.fg_dim,
                        bg = colors.theme.ui.bg_m3,
                    },

                    TelescopeResultsBorder = {
                        fg = colors.theme.ui.bg_m3,
                        bg = colors.theme.ui.bg_m3,
                    },

                    TelescopePreviewNormal = {
                        bg = colors.theme.ui.bg,
                    },

                    TelescopePreviewBorder = {
                        fg = colors.theme.ui.bg,
                        bg = colors.theme.ui.bg,
                    },

                    ["@comment"] = {
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
                }
            end,
        })

        vim.cmd.colorscheme("kanagawa-dragon")
    end,
}
