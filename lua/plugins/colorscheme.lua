return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,

    config = function()
        require("catppuccin").setup({
            flavour = "mocha",

            transparent_background = true,
            term_colors = true,

            styles = {
                comments = { "italic" },
                functions = {},
                keywords = {},
            },

            integrations = {
                cmp = true,
                treesitter = true,
                telescope = true,
                mason = true,
            },

            custom_highlights = function(colors)
                return {
                    NormalFloat = {
                        fg = colors.text,
                        bg = colors.mantle,
                    },

                    FloatBorder = {
                        fg = colors.lavendar,
                        bg = colors.mantle,
                    },

                    FloatTitle = {
                        fg = colors.mauve,
                        bg = colors.mantle,
                    },


                    SignColumn = { bg = "NONE" },
                    FoldColumn = { bg = "NONE" },
                    LineNr = { bg = "NONE" },
                    CursorLineNr = { bg = "NONE" },

                    LazyNormal = {
                        bg = colors.mantle,
                        fg = colors.subtext1,
                    },

                    MasonNormal = {
                        bg = colors.mantle,
                        fg = colors.subtext1,
                    },

                    Pmenu = {
                        fg = colors.text,
                        bg = colors.surface0,
                    },

                    PmenuSel = {
                        fg = colors.base,
                        bg = colors.blue,
                    },

                    PmenuSbar = {
                        bg = colors.surface1,
                    },

                    PmenuThumb = {
                        bg = colors.surface2,
                    },

                    TelescopeTitle = {
                        fg = colors.mauve,
                        bold = true,
                    },

                    TelescopePromptNormal = {
                        bg = colors.surface0,
                    },

                    TelescopePromptBorder = {
                        fg = colors.surface0,
                        bg = colors.surface0,
                    },

                    TelescopeResultsNormal = {
                        fg = colors.subtext1,
                        bg = colors.mantle,
                    },

                    TelescopeResultsBorder = {
                        fg = colors.mantle,
                        bg = colors.mantle,
                    },

                    TelescopePreviewNormal = {
                        bg = colors.crust,
                    },

                    TelescopePreviewBorder = {
                        fg = colors.crust,
                        bg = colors.crust,
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

        vim.cmd.colorscheme("catppuccin-mocha")
    end,
}
