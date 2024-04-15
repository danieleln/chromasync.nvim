-- Loads color palette from the template
local palette = require("chromasync.template").load()

-- Checks if colors where parsed correctly
if palette == nil then
	return nil
end

local M = {}

M.palette = palette

M.syntax = {
	Comment = palette.fg50bg,

	Preprocessor = palette.cyn,
	Keyword      = palette.mag,
	Statement    = palette.magh,
	Function     = palette.bluh,
	Special      = palette.fg80bg,

	Identifier = palette.fg,
	Type       = palette.red,
	Typedef    = palette.red,
	Constant   = palette.ylw,
	String     = palette.grn,
	Number     = palette.ylwh,
	Boolean    = palette.ylw,

	Exception = palette.red,
	Operator = palette.cynh,
	Label = palette.mag,
	Tag = palette.red,
	Delimiter = palette.cynh,
	Debug = palette.red,
	Link = palette.blu,
	Punctuation = palette.cynh,
}

M.level = {
	Error = palette.red,
	Warn  = palette.ylw,
	Note  = palette.grn,
	Info  = palette.cyn,
}

return M
