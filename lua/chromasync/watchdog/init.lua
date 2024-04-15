local M = {}
local id = nil

M.setup = function()
	id = vim.api.nvim_create_autocmd("ColorSchemePre", {
		callback = function(ev)
			if ev.match ~= "chromasync" and id ~= nil then
				print("DEL" .. string.format('event fired: %s', vim.inspect(ev)))
				vim.api.nvim_del_autocmd(id)
			end
		end
	})
end

return M
