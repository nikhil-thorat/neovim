return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup({
            defaults = {
                theme = "ivy",
                layout_strategy = "vertical",
                layout_config = {
                    prompt_position = "bottom",
                    width = 0.4,
                    height = 0.4,
                },
                sorting_strategy = "descending",
            },

            pickers = {
                find_files = {
                    previewer = false,
                },
                live_grep = {
                    previewer = false,
                },
                buffers = {
                    previewer = false,
                },
                help_tags = {
                    previewer = false,
                },
                oldfiles = {
                    previewer = false,
                },
                grep_string = {
                    previewer = false,
                },
            },
        })
    end,
}
