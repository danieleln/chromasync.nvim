local M = {}

local hi = function(name, val)
	-- Force links
	val.force = true

	-- Make sure that `--cterm` attribute is not populated from `gui`
	vim.api.nvim_set_hl(0, name, val)
end

local hi_table = function(table)
	for name, val in pairs(table) do
		hi(name, val)
	end
end

local modules = {
	"nvim", "treesitter", "todo",
}

M.apply = function(colors)
	for _, module in pairs(modules) do
		local hi_gen = require("chromasync.highlights." .. module)
		hi_table(hi_gen(colors))
	end
	hi_table({
		Cursor = { fg = colors.palette.bg, bg = colors.palette.red },
	})
end

return M
