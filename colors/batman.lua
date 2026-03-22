if vim.g.colors_name then
	vim.cmd("highlight clear")
end
vim.cmd("set termguicolors")
vim.g.colors_name = "batman"

local colors = {
	bg = "#1b1d1e",
	fg = "#c5c5be",
	cursor = "#fcee0b",
	selection = "#4d4f4c",
	gray = "#6e6e6e",
	bright_yel = "#f3fd21",
	muted_yel = "#c8be46",
	dark_gray = "#505354",
	white = "#dadad5",
}

local hl = function(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

hl("Normal", { fg = colors.fg, bg = colors.bg })
hl("NormalFloat", { fg = colors.fg, bg = colors.bg })
hl("FloatBorder", { fg = colors.dark_gray, bg = colors.bg })
hl("Cursor", { fg = colors.bg, bg = colors.cursor })
hl("Visual", { bg = colors.selection })
hl("WinSeparator", { fg = colors.dark_gray, bg = colors.bg })
hl("Search", { fg = colors.bg, bg = colors.bright_yel })
hl("IncSearch", { fg = colors.bg, bg = colors.cursor })

hl("Delimiter", { fg = colors.dark_gray })
hl("@punctuation.bracket", { fg = colors.dark_gray })
hl("@punctuation.delimiter", { fg = colors.dark_gray })
hl("@constructor", { fg = colors.dark_gray })

hl("Comment", { fg = colors.muted_yel, italic = true })
hl("Keyword", { fg = colors.gray, bold = true, italic = true })
hl("Statement", { fg = colors.gray })
hl("Function", { fg = colors.muted_yel })
hl("String", { fg = colors.muted_yel })
hl("Number", { fg = colors.bright_yel })
hl("Type", { fg = colors.gray })
hl("Constant", { fg = colors.muted_yel })
hl("Identifier", { fg = colors.muted_yel })
hl("Operator", { fg = colors.muted_yel })

hl("Special", { fg = colors.bright_yel })
hl("@character.special", { fg = colors.bright_yel })

hl("@variable", { fg = colors.fg })
hl("@property", { fg = colors.gray })
hl("@parameter", { fg = colors.gray })
hl("@field", { fg = colors.muted_yel })
hl("@module", { fg = colors.fg })

hl("NeoTreeNormal", { fg = colors.fg, bg = colors.bg })
hl("NeoTreeDirectoryIcon", { fg = colors.bright_yel })
hl("NeoTreeExpander", { fg = colors.gray })
