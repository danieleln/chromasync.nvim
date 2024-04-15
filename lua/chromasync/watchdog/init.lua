local M = {}

M.setup = function()
	local timer = vim.loop.new_timer()

	if timer == nil then
		vim.notify_once("Unable to start the watchdog timer", vim.log.levels.ERROR)
		return nil
	end

	-- Starts the timer
	timer:start(1000, 1000, function()
	end)

	-- Starts the autocmd to stop the timer once the colorscheme changes
	local id = nil
	id = vim.api.nvim_create_autocmd("ColorSchemePre", {
		callback = function(ev)
			if ev.match ~= "chromasync" then
				-- Stops the timer and deletes the autocmd
				timer:stop()

				if id ~= nil then
					vim.api.nvim_del_autocmd(id)
				end
			end
		end
	})
end

return M
