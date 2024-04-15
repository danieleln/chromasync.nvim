local M = {}
local timer_instance = nil

-- Starts the timer
M.start = function(delay, callback)
	-- Makes sure the timer instance is valid
	timer_instance = vim.loop.new_timer()

	if timer_instance == nil then
		vim.notify_once("Unable to start the watchdog timer", vim.log.levels.ERROR)
		return nil
	end

	timer_instance:start(delay, delay, callback)
end

-- Stops the timer
M.stop = function()
	if timer_instance ~= nil then
		timer_instance:stop()
		timer_instance = nil
	end
end

return M
