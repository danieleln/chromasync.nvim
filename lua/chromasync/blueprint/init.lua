local blueprint = require("chromasync.blueprint.json-blueprint")
local config = require("chromasync.config")
local util = require("chromasync.util")

local M = {}
local did_setup_run = false

local chromasync_reload = function()
	vim.fn.system(string.format(
		"chromasync -q reload -t='%s' --no-script",
		config.CHROMASYNC_BLUEPRINT_FILE
	))
end

-- Copies the color blueprint to chromasync blueprint dir
M.setup = function()
	-- Checks if the blueprint directory exists
	if vim.fn.isdirectory(config.CHROMASYNC_BLUEPRINTS_DIR) == 0 then
		vim.notify(
			"An error occurred while writing the blueprint to `" .. config.CHROMASYNC_BLUEPRINT_FILE .. "`",
			vim.log.levels.WARN
		)
		return nil
	end

	-- Writes the blueprint to config.CHROMASYNC_BLUEPRINT_FILE
	local file = io.open(config.CHROMASYNC_BLUEPRINT_FILE, "w")

	if not file then
		vim.notify(
			"An error occurred while writing the blueprint to `" .. config.CHROMASYNC_BLUEPRINT_FILE .. "`",
			vim.log.levels.WARN
		)
		return nil
	end

	file:write(blueprint)
	file:close()

	-- Reloads the theme
	chromasync_reload()
end

-- Loads the color palette
M.load = function()
	-- Runs the setup if it didn't already
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
