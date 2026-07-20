return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        local colors = require("vscode.colors").get_colors()
        local bufferline = require("bufferline")
        bufferline.setup {
            options = {
                style_preset = {
                    bufferline.style_preset.minimal,
                },
            },
            highlights = {
                background = {
                    fg = colors.vscFront,
                    bg = "NONE",
                },

                buffer_visible = {
                    fg = colors.vscFront,
                    bg = "NONE",
                },

                buffer_selected = {
                    fg = colors.vscFront,
                    bg = "NONE",
                    bold = true,
                },
            },
        }
    end
}
