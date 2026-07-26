return {
    "mellow-theme/mellow.nvim",
    priority = 1000,

    config = function()
        vim.g.mellow_transparent = true
        vim.cmd.colorscheme("mellow")

        local c = require("mellow.colors").dark
        local hl = vim.api.nvim_set_hl

        hl(0, "NormalFloat", {
            fg = c.fg,
            bg = c.gray01,
        })

        hl(0, "FloatBorder", {
            fg = c.blue,
            bg = c.gray01,
        })

        hl(0, "FloatTitle", {
            fg = c.blue,
            bg = c.gray01,
            bold = true,
        })

        local transparent = {
            "SignColumn",
            "FoldColumn",
            "LineNr",
            "CursorLineNr",

            "TabLine",
            "TabLineFill",
            "TabLineSel",

            "BufferLineFill",
            "BufferLineBackground",
            "BufferLineBufferVisible",
        }

        for _, group in ipairs(transparent) do
            hl(0, group, {
                bg = c.none,
            })
        end

        hl(0, "BufferLineBufferSelected", {
            bg = c.none,
            bold = true,
        })

        hl(0, "BufferLineSeparator", {
            fg = c.bg,
            bg = c.none,
        })

        hl(0, "BufferLineSeparatorVisible", {
            fg = c.bg,
            bg = c.none,
        })

        hl(0, "BufferLineSeparatorSelected", {
            fg = c.bg,
            bg = c.none,
        })

        hl(0, "BufferLineIndicatorSelected", {
            fg = c.blue,
            bg = c.none,
        })


        hl(0, "LazyNormal", {
            fg = c.fg,
            bg = c.gray01,
        })


        hl(0, "MasonNormal", {
            fg = c.fg,
            bg = c.gray01,
        })


        hl(0, "Pmenu", {
            fg = c.fg,
            bg = c.gray01,
        })

        hl(0, "PmenuSel", {
            fg = c.bg_dark,
            bg = c.blue,
            bold = true,
        })

        hl(0, "PmenuSbar", {
            bg = c.gray03,
        })

        hl(0, "PmenuThumb", {
            bg = c.gray04,
        })


        hl(0, "TelescopeNormal", {
            bg = c.gray01,
        })

        hl(0, "TelescopeBorder", {
            fg = c.gray01,
            bg = c.gray01,
        })

        hl(0, "TelescopePromptNormal", {
            bg = c.gray01,
        })

        hl(0, "TelescopePromptBorder", {
            fg = c.gray01,
            bg = c.gray01,
        })

        hl(0, "TelescopePromptTitle", {
            fg = c.blue,
            bg = c.gray01,
            bold = true,
        })

        hl(0, "TelescopeResultsNormal", {
            fg = c.fg,
            bg = c.gray01,
        })

        hl(0, "TelescopeResultsBorder", {
            fg = c.gray01,
            bg = c.gray01,
        })

        hl(0, "TelescopePreviewNormal", {
            bg = c.gray01,
        })

        hl(0, "TelescopePreviewBorder", {
            fg = c.gray01,
            bg = c.gray01,
        })


        hl(0, "@comment", {
            italic = true,
        })

        hl(0, "@keyword", {
            italic = false,
        })

        hl(0, "@function", {
            italic = false,
        })

        hl(0, "@keyword.return", {
            italic = false,
        })

        hl(0, "@keyword.function", {
            italic = false,
        })
    end,
}
