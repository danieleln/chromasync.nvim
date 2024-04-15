local colors = require("chromasync.colors")

local M = {}

M.load = function()
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
	require("chromasync.highlights").apply(colors)

	-- Watches for changes to the palette file
	require("chromasync.watchdog").setup()
end

return M
