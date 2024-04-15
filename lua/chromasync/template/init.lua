local template = require("chromasync.template.json-template")
local config = require("chromasync.config")
local util = require("chromasync.util")

local M = {}
local did_setup_run = false

local chromasync_reload = function()
	vim.fn.system("chromasync -q reload -t='" .. config.FILE_NAME .. "' --no-script")
end

-- Copies the color template to chromasync template dir
M.setup = function()
	-- Checks if the destination directory exists
	if vim.fn.isdirectory(config.CHROMASYNC_TEMPLATES_DIR) == 0 then
		vim.fn.system("mkdir " .. config.CHROMASYNC_TEMPLATES_DIR)

		if vim.fn.isdirectory(config.CHROMASYNC_TEMPLATES_DIR) == 0 then
			vim.notify(
				"An error occurred while writing the template to `" .. config.CHROMASYNC_TEMPLATE_FILE .. "`",
				vim.log.levels.WARN
			)
			return nil
		end
	end

	-- Writes the template to config.CHROMASYNC_TEMPLATE_FILE
	local file = io.open(config.CHROMASYNC_TEMPLATE_FILE, "w")

	if not file then
		vim.notify(
			"An error occurred while writing the template to `" .. config.CHROMASYNC_TEMPLATE_FILE .. "`",
			vim.log.levels.WARN
		)
		return nil
	end

	file:write(template)
	file:close()

	-- Reloads the theme
	chromasync_reload()
end

-- Loads the color palette
M.load = function()
	if not did_setup_run then
		M.setup()
		did_setup_run = true
	end

	-- Reloads the theme if the output file doesn't exists yet
	if not util.file_exists(config.CHROMASYNC_OUT_FILE) then
		chromasync_reload()
	end

	-- If now the file exists, returns its content
	if util.file_exists(config.CHROMASYNC_OUT_FILE) then
		local lines = vim.fn.readfile(config.CHROMASYNC_OUT_FILE)
		return vim.json.decode(table.concat(lines, " "))
	end

	-- File not found, raise an error
	vim.notify(
		"Can't load the chromasync colorscheme cause " .. config.CHROMASYNC_OUT_FILE .. " doesn't exists",
		vim.log.levels.ERROR
	)

	return nil
end

return M
