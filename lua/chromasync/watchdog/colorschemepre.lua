local M = {}
local autocmd_id = nil

-- Creates the autocmd
M.create = function(callback)
	autocmd_id = vim.api.nvim_create_autocmd("ColorSchemePre", { callback = callback })
end

-- Deletes the autocmd
M.delete = function()
	if autocmd_id ~= nil then
		vim.api.nvim_del_autocmd(autocmd_id)
		autocmd_id = nil
	end
end

return M
