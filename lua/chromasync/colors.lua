-- Loads color palette from the template
local palette = require("chromasync.template").load()

-- Checks if colors where parsed correctly
if palette == nil then
	return nil
end

local M = {}

M.palette = palette

M.syntax = {
	statement = palette.cyn,
	comment = palette.fg70bg,
	macro = palette.cyn,

	identifier = palette.fg,
	keyword = palette.mag,
	func = palette.bluh,
	class = palette.cyn,

	typedef = palette.red,
	constant = palette.ylw,
	string = palette.grn,
	number = palette.ylwh,

	exception = palette.red,
	operator = palette.cynh,
	label = palette.mag,
	tag = palette.red,
	delimiter = palette.cynh,
	debug = palette.red,
	link = palette.blu,
}

return M
