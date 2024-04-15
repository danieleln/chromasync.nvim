local util = require("chromasync.util")
local config = require("chromasync.config")

local M = {}

M.setup = function()


	local timer = vim.loop.new_timer()
	local id = nil

	-- Makes sure the timer instance is valid
	if timer == nil then
		vim.notify_once("Unable to start the watchdog timer", vim.log.levels.ERROR)
		return nil
	end

	local stopTimerAndAutoCmd = function()
		timer:stop()

		if id ~= nil then
			vim.api.nvim_del_autocmd(id)
		end
	end

	-- Starts the autocmd to stop the timer once the colorscheme changes
	id = vim.api.nvim_create_autocmd("ColorSchemePre", {
		callback = function(ev)
			if ev.match ~= "chromasync" then
				-- Stops the timer and deletes the autocmd
				vim.schedule(stopTimerAndAutoCmd)
			end
		end
	})

	-- Starts the timer
	local content = util.read_file(config.CHROMASYNC_OUT_FILE)
	timer:start(1000, 1000, function()
		local new_content = util.read_file(config.CHROMASYNC_OUT_FILE)

		-- Reloads the colorscheme if the palette file changed
		if new_content ~= nil and new_content ~= content then
			content = new_content
			vim.schedule(stopTimerAndAutoCmd)
			vim.schedule(function()
				require("chromasync").load()
			end)
		end
	end)
end

return M
