local highlights = require("chromasync.highlights")
local template = require("chromasync.template")
local colors = require("chromasync.colors")

local M = {}

M.load = function()
	template.setup()

	-- Checks if colors are loaded correctly
	if colors == nil then
		return
	end

	vim.g.colors_name = "chromasync"

	vim.cmd.highlight("clear")

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Sets all the highlights
	highlights.apply(colors)
end

return M
