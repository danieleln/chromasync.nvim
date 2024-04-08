local M = {}

M.file_exists = function(path)
	local stat = vim.loop.fs_stat(path)
	return stat and stat.type == "file"
end

return M
