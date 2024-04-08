local config = require("chromasync.config")
local util = require("chromasync.util")

-- Reloads the theme if the output file doesn't exists yet
if not util.file_exists(config.CHROMASYNC_OUT_FILE) then
	vim.fn.system("chromasync -q reload")
	-- local pipe = io.popen("chromasync -q reload")
	-- local output = pipe:read("*a")
	-- pipe:close()
end

-- If now the file exists, returns its content
if util.file_exists(config.CHROMASYNC_OUT_FILE) then
	return vim.fn.readfile(config.CHROMASYNC_OUT_FILE)
end

-- File not found, raise an error
vim.notify(
	"Can't load the chromasync colorscheme cause " .. config.CHROMASYNC_OUT_FILE .. " doesn't exists",
	vim.log.levels.ERROR
)

return nil
