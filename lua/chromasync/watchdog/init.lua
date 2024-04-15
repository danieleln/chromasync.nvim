local util = require("chromasync.util")
local config = require("chromasync.config")
local timer = require("chromasync.watchdog.timer")
local autocmd = require("chromasync.watchdog.colorschemepre")

local M = {}

M.setup = function()

	-- Reads the content of the palette file
	local content = util.read_file(config.CHROMASYNC_OUT_FILE)

	-- Starts the timer
	timer.start(500, function()
		local new_content = util.read_file(config.CHROMASYNC_OUT_FILE)

		-- Reloads the colorscheme if the palette file changed
		if new_content ~= nil and new_content ~= content then
			content = new_content

			vim.schedule(function()
				timer.stop()
				autocmd.delete()
				require("chromasync").load()
			end)
		end

	end)

	-- Stops the timer and deletes the autocmd when loading a new colorscheme
	autocmd.create(function(ev)
		if ev.match ~= "chromasync" then
			vim.schedule(autocmd.delete)
			vim.schedule(timer.stop)
		end
	end)

end

return M
