return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",

    config = function()
        local colors = require("mellow.colors").dark
        local bufferline = require("bufferline")

        bufferline.setup({
            options = {
                style_preset = {
                    bufferline.style_preset.minimal,
                },
            },

            highlights = {
                background = {
                    fg = colors.fg,
                    bg = colors.none,
                },

                buffer_visible = {
                    fg = colors.fg,
                    bg = colors.none,
                },

                buffer_selected = {
                    fg = colors.fg,
                    bg = colors.none,
                    bold = true,
                },
            },
        })
    end,
}
