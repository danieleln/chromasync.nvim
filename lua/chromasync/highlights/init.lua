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

M.apply = function(colors)
	hi_table({
		Normal = {
			fg = colors.fg,
			bg = colors.bg,
			--ctermfg = colors.fg,
			--ctermbg = colors.bg,
		},
	})
end

return M
