local config = require("chromasync.config")
local util = require("chromasync.util")

-- Reloads the theme if the output file doesn't exists yet
if not util.file_exists(config.CHROMASYNC_OUT_FILE) then
	vim.fn.system("chromasync -q reload")
	-- local pipe = io.popen("chromasync -q reload")
	-- local output = pipe:read("*a")
	-- pipe:close()
end

-- If now the file exists, return its content
if util.file_exists(config.CHROMASYNC_OUT_FILE) then
	return vim.fn.readfile(config.CHROMASYNC_OUT_FILE)
end

-- Returns a default palette
-- TODO: implement the default palette
return {
	bg = "#000000",
	fg = "#ffffff",

	blk = "#ffffff",
	red = "#ffffff",
	grn = "#ffffff",
	ylw = "#ffffff",
	blu = "#ffffff",
	mag = "#ffffff",
	cyn = "#ffffff",
	wht = "#ffffff",

	blkh = "#ffffff",
	redh = "#ffffff",
	grnh = "#ffffff",
	ylwh = "#ffffff",
	bluh = "#ffffff",
	magh = "#ffffff",
	cynh = "#ffffff",
	whth = "#ffffff",
}
