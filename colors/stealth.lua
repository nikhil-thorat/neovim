if vim.g.colors_name then
	vim.cmd("highlight clear")
end
vim.cmd("set termguicolors")
vim.g.colors_name = "stealth"

local colors = {
	bg = "#0e0e0e",
	surface = "#161616",
	fg = "#b0b8b8",
	cursor = "#e2553d",
	selection = "#1f2828",
	primary = "#e2553d",
	mid = "#505558",
	ghost = "#3a4545",
}

local hl = function(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

hl("Normal", { fg = colors.fg, bg = colors.bg })
hl("NormalFloat", { fg = colors.fg, bg = colors.surface })
hl("FloatBorder", { fg = colors.ghost, bg = colors.surface })
hl("Cursor", { fg = colors.bg, bg = colors.cursor })
hl("Visual", { bg = colors.selection })
hl("WinSeparator", { fg = colors.ghost, bg = colors.bg })
hl("Search", { fg = colors.bg, bg = colors.primary })
hl("IncSearch", { fg = colors.bg, bg = colors.cursor })

hl("Delimiter", { fg = colors.ghost })
hl("@punctuation.bracket", { fg = colors.ghost })
hl("@punctuation.delimiter", { fg = colors.ghost })
hl("@constructor", { fg = colors.ghost })

hl("Comment", { fg = colors.ghost, italic = true })
hl("Keyword", { fg = colors.mid, bold = true, italic = true })
hl("Statement", { fg = colors.mid })
hl("Function", { fg = colors.mid })
hl("String", { fg = colors.mid })
hl("Number", { fg = colors.primary })
hl("Type", { fg = colors.mid })
hl("Constant", { fg = colors.mid })
hl("Identifier", { fg = colors.fg })
hl("Operator", { fg = colors.ghost })
hl("Special", { fg = colors.primary })
hl("@character.special", { fg = colors.primary })

hl("@variable", { fg = colors.fg })
hl("@property", { fg = colors.mid })
hl("@parameter", { fg = colors.mid })
hl("@field", { fg = colors.mid })
hl("@module", { fg = colors.fg })

hl("NeoTreeNormal", { fg = colors.fg, bg = colors.bg })
hl("NeoTreeDirectoryIcon", { fg = colors.primary })
hl("NeoTreeExpander", { fg = colors.ghost })
