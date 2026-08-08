return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",

    config = function()
        local rose = require("rose-pine.palette")
        local bufferline = require("bufferline")

        bufferline.setup({
            options = {
                style_preset = {
                    bufferline.style_preset.minimal,
                },
            },

            highlights = {
                background = {
                    fg = rose.text,
                    bg = "NONE",
                },

                buffer_visible = {
                    fg = rose.text,
                    bg = "NONE",
                },

                buffer_selected = {
                    fg = rose.text,
                    bg = "NONE",
                    bold = true,
                },
            },
        })
    end,
}
