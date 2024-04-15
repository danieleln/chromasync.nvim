local util = require("chromasync.util")

return function(colors)
	local p = colors.palette
	local s = colors.syntax
	local l = colors.level

	return util.as_fg_color({
		-- stylua: ignore start
		Normal  = { fg = p.fg, bg = p.bg },
		Conceal = s.Comment,

		-- Cursor
		Cursor     = { fg = p.bg, bg = p.red },
		-- lCursor    = { link = "Normal" },
		-- Cursor     = {},
		-- lCursor    = {},
		-- CursorIM   = { link = "Cursor" },
		-- TermCursor = { reverse = true },

		-- Highlight lines/cols
		CursorLine   = { bg = p.bg80fg },
		CursorColumn = { bg = p.bg80fg },
		ColorColumn  = { bg = p.bg90fg },

		-- Line numbers
		LineNr       = p.bg50fg,
		LineNrAbove  = p.bg60fg,
		LineNrBelow  = p.bg60fg,
		CursorLineNr = p.fg,

		-- Sign/fold cols
		SignColumn     = p.grn,
		FoldColumn     = p.fg,
		CursorLineSign = { link="SignColumn" },
		CursorLineFold = { link="FoldColumn" },

		-- Comments
		Comment = { fg = s.Comment, italic = true },

		-- Data types
		Constant  = s.Constant,
		Boolean   = s.Boolean,
		String    = s.String,
		Character = s.String,
		Number    = s.Number,
		Float     = { link = 'Number' },

		-- Preprocessor
		PreProc   = s.Preprocessor,
		Define    = { link = 'PreProc' },
		Include   = { link = 'PreProc' },
		Macro     = { link = 'PreProc' },
		PreCondit = { link = 'PreProc' },

		-- Identifiers
		Identifier = s.Identifier,
		Function   = s.Function,

		-- Statements
		Statement   = s.Statement,
		Conditional = { link = 'Statement' },
		Exception   = { link = 'Statement' },
		Keyword     = { link = 'Statement' },
		Label       = { link = 'Statement' },
		Operator    = { link = 'Statement' },
		Repeat      = { link = 'Statement' },

		-- Types
		Type         = s.Type,
		Typedef      = { link = 'Type' },
		StorageClass = { link = 'Type' },
		Structure    = { link = 'Type' },

		-- Special
		Special        = s.Special,
		Debug          = { link = 'Special' },
		Delimiter      = { link = 'Special' },
		SpecialChar    = { link = 'Special' },
		SpecialComment = { link = 'Special' },
		Tag            = { link = 'Special' },

		-- Misc
		Underlined = { fg = p.mag, underline=true },

		-- DiffText =     { bg = 'Red', bold = true,           ctermbg = 'Red', cterm = { bold = true } },
		-- ErrorMsg =     { fg = 'White', bg = 'Red',          ctermfg = 'White', ctermbg = 'DarkRed' },
		-- IncSearch =    { reverse = true,                    cterm = { reverse = true } },
		-- ModeMsg =      { bold = true,                       cterm = { bold = true } },
		-- NonText =      { fg = 'Blue', bold = true,          ctermfg = 'Blue' },
		-- PmenuSbar =    { bg = 'Grey',                       ctermbg = 'Grey' },
		-- StatusLine =   { reverse = true, bold = true,       cterm = { reverse = true, bold = true }},
		-- StatusLineNC = { reverse = true,                    cterm = { reverse = true } },
		-- TabLineFill =  { reverse = true,                    cterm = { reverse = true } },
		-- TabLineSel =   { bold = true,                       cterm = { bold = true } },
		-- TermCursor =   { reverse = true,                    cterm = { reverse = true } },
		-- WinBar =       { bold = true,                       cterm = { bold = true } },
		-- WildMenu =     { fg = 'Black', bg = 'Yellow',       ctermfg = 'Black', ctermbg = 'Yellow' },
		--
		-- VertSplit =      { link = 'Normal' },
		-- WinSeparator =   { link = 'VertSplit' },
		-- WinBarNC =       { link = 'WinBar' },
		-- EndOfBuffer =    { link = 'NonText' },
		-- QuickFixLine =   { link = 'Search' },
		-- CurSearch =      { link = 'Search' },
		-- PmenuKind =      { link = 'Pmenu' },
		-- PmenuKindSel =   { link = 'PmenuSel' },
		-- PmenuExtra =     { link = 'Pmenu' },
		-- PmenuExtraSel =  { link = 'PmenuSel' },
		-- Substitute =     { link = 'Search' },
		-- Whitespace =     { link = 'NonText' },
		-- MsgSeparator =   { link = 'StatusLine' },
		-- NormalFloat =    { link = 'Pmenu' },
		-- FloatBorder =    { link = 'WinSeparator' },
		-- FloatTitle =     { link = 'Title' },
		-- FloatFooter =    { link = 'Title' },
		--
		-- FloatShadow =          { bg = 'Black', blend=80 },
		-- FloatShadowThrough =   { bg = 'Black', blend=100 },
		-- RedrawDebugNormal =    { reverse = true,             cterm = { reverse = true } },
		-- RedrawDebugClear =     { bg = 'Yellow',              ctermbg = 'Yellow' },
		-- RedrawDebugComposed =  { bg = 'Green',               ctermbg = 'Green' },
		-- RedrawDebugRecompose = { bg = 'Red',                 ctermbg = 'Red' },
		-- Error =                { fg = 'White', bg = 'Red',   ctermfg = 'White', ctermbg = 'Red' },
		-- Todo =                 { fg = 'Blue', bg = 'Yellow', ctermfg = 'Black', ctermbg = 'Yellow' },
		--
		-- stylua: ignore end
	}, colors)
end

