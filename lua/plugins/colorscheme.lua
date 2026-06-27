return {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,

    config = function()
        require("everforest").setup({
            background = "hard",
            transparent_background_level = 0,

            italics = false,
            disable_italic_comments = false,

            on_highlights = function(hl, palette)
                hl.NormalFloat = { bg = "NONE" }
                hl.FloatBorder = { bg = "NONE" }
                hl.FloatTitle = { bg = "NONE" }

                hl.NormalDark = {
                    fg = palette.grey1,
                    bg = palette.bg_dim,
                }

                hl.LazyNormal = {
                    fg = palette.grey1,
                    bg = palette.bg_dim,
                }

                hl.MasonNormal = {
                    fg = palette.grey1,
                    bg = palette.bg_dim,
                }

                -- Completion Menu
                hl.Pmenu = {
                    fg = palette.fg,
                    bg = palette.bg3,
                }

                hl.PmenuSel = {
                    fg = "NONE",
                    bg = palette.bg5,
                }

                hl.PmenuSbar = {
                    bg = palette.bg2,
                }

                hl.PmenuThumb = {
                    bg = palette.bg5,
                }

                -- Telescope
                hl.TelescopeTitle = {
                    fg = palette.green,
                    bold = true,
                }

                hl.TelescopePromptNormal = {
                    bg = palette.bg3,
                }

                hl.TelescopePromptBorder = {
                    fg = palette.bg3,
                    bg = palette.bg3,
                }

                hl.TelescopeResultsNormal = {
                    fg = palette.grey1,
                    bg = palette.bg_dim,
                }

                hl.TelescopeResultsBorder = {
                    fg = palette.bg_dim,
                    bg = palette.bg_dim,
                }

                hl.TelescopePreviewNormal = {
                    bg = palette.bg0,
                }

                hl.TelescopePreviewBorder = {
                    fg = palette.bg0,
                    bg = palette.bg0,
                }

                hl.SignColumn = { bg = "NONE" }
                hl.FoldColumn = { bg = "NONE" }
                hl.LineNr = { bg = "NONE" }
                hl.CursorLineNr = { bg = "NONE" }

                hl["@comment"] = { italic = true }
                hl["@keyword"] = { italic = false }
                hl["@function"] = { italic = false }
                hl["@keyword.return"] = { italic = false }
                hl["@keyword.function"] = { italic = false }
            end,
        })

        vim.cmd.colorscheme("everforest")
    end,
}
