local template = require("chromasync.template")

local M = {}

M.load = function()
	local colors = require("chromasync.template").load()

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
	local highlights = require("chromasync.highlights")
	highlights.apply(colors)
end

return M
