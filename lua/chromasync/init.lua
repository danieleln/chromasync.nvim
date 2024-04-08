local template = require("chromasync.template")
local colors = require("chromasync.colors")

local M = {}

M.load = function()
	template.setup()
	for k, v in pairs(colors) do
		print(k, v)
	end
end

return M
