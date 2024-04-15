local M = {}

M.file_exists = function(path)
	local stat = vim.loop.fs_stat(path)
	return stat and stat.type == "file"
end

M.as_fg_color = function(group_table, colors)
	local t = {}

	for group, value in pairs(group_table) do
		if type(value) == "table" then
			t[group] = value
		else
			t[group] = { fg = value }
		end

		-- if t[group]["bg"] == nil then
		-- 	t[group]["bg"] = colors.palette.bg
		-- end
	end

	return t
end

-- Reads the content of a file
M.read_file = function(path)
	local file = io.open(path, "rb")

	if not file then
		return nil
	end

	local content = file:read("*all")
	file:close()

	return content
end

return M
