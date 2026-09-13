return {
	"blazkowolf/gruber-darker.nvim",
	priority = 1000,
	lazy = false,

	config = function()
		vim.cmd.colorscheme("gruber-darker")

		local c = {
			black = "#101010",
			bg = "#181818",
			bg_alt = "#282828",

			fg = "#E4E4E4",
			fg_bright = "#FFFFFF",

			red = "#F43841",
			red_bright = "#F43841",

			green = "#73D936",
			green_bright = "#73D936",

			yellow = "#FFDD33",
			yellow_bright = "#FFDD33",

			blue = "#96A6C8",
			blue_bright = "#96A6C8",

			magenta = "#9E95C7",
			magenta_bright = "#9E95C7",

			cyan = "#95A99F",
			cyan_bright = "#95A99F",

			gray = "#453D41",
			gray_blue = "#565F73",

			bell = "#C73C3F",
		}

		local set = vim.api.nvim_set_hl

		set(0, "Normal", {
			fg = c.fg,
			bg = c.bg,
		})

		set(0, "NormalFloat", {
			fg = c.fg,
			bg = c.bg_alt,
		})

		set(0, "Cursor", {
			fg = c.black,
			bg = c.yellow,
		})

		set(0, "CursorLine", {
			bg = c.bg_alt,
		})

		set(0, "CursorLineNr", {
			fg = c.yellow,
			bg = "NONE",
			bold = true,
		})

		set(0, "LineNr", {
			fg = c.gray,
			bg = "NONE",
		})

		set(0, "SignColumn", {
			bg = "NONE",
		})

		set(0, "FoldColumn", {
			bg = "NONE",
		})

		set(0, "FloatBorder", {
			fg = c.blue,
			bg = c.bg_alt,
		})

		set(0, "FloatTitle", {
			fg = c.magenta,
			bg = c.bg_alt,
			bold = true,
		})

		set(0, "Pmenu", {
			fg = c.fg,
			bg = c.bg_alt,
		})

		set(0, "PmenuSel", {
			fg = c.black,
			bg = c.yellow,
			bold = true,
		})

		set(0, "PmenuSbar", {
			bg = c.black,
		})

		set(0, "PmenuThumb", {
			bg = c.gray,
		})

		set(0, "TelescopeNormal", {
			fg = c.fg,
			bg = c.bg_alt,
		})

		set(0, "TelescopeBorder", {
			fg = c.blue,
			bg = c.bg_alt,
		})

		set(0, "TelescopeTitle", {
			fg = c.magenta,
			bg = c.bg_alt,
			bold = true,
		})

		set(0, "TelescopePromptNormal", {
			fg = c.fg,
			bg = c.bg_alt,
		})

		set(0, "TelescopePromptBorder", {
			fg = c.bg_alt,
			bg = c.bg_alt,
		})

		set(0, "TelescopePromptTitle", {
			fg = c.yellow,
			bg = c.bg_alt,
			bold = true,
		})

		set(0, "TelescopeResultsNormal", {
			fg = c.fg,
			bg = c.bg_alt,
		})

		set(0, "TelescopeResultsBorder", {
			fg = c.bg_alt,
			bg = c.bg_alt,
		})

		set(0, "TelescopePreviewNormal", {
			fg = c.fg,
			bg = c.bg,
		})

		set(0, "TelescopePreviewBorder", {
			fg = c.bg,
			bg = c.bg,
		})

		set(0, "LazyNormal", {
			fg = c.fg,
			bg = c.bg_alt,
		})

		set(0, "LazyBorder", {
			fg = c.blue,
			bg = c.bg_alt,
		})

		set(0, "MasonNormal", {
			fg = c.fg,
			bg = c.bg_alt,
		})

		set(0, "MasonBorder", {
			fg = c.blue,
			bg = c.bg_alt,
		})

		set(0, "DiagnosticError", {
			fg = c.red,
		})

		set(0, "DiagnosticWarn", {
			fg = c.yellow,
		})

		set(0, "DiagnosticInfo", {
			fg = c.blue,
		})

		set(0, "DiagnosticHint", {
			fg = c.green,
		})

		set(0, "DiagnosticUnderlineError", {
			undercurl = true,
			sp = c.red,
		})

		set(0, "DiagnosticUnderlineWarn", {
			undercurl = true,
			sp = c.yellow,
		})

		set(0, "GitSignsAdd", {
			fg = c.green,
			bg = "NONE",
		})

		set(0, "GitSignsChange", {
			fg = c.yellow,
			bg = "NONE",
		})

		set(0, "GitSignsDelete", {
			fg = c.red,
			bg = "NONE",
		})
	end,
}
