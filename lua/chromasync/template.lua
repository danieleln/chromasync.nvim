local config = require("chromasync.config")

local template = [[
@fmt: #hex

return {
  bg = "{BG}",
  fg = "{FG}",

  blk = "{BLK}",
  red = "{RED}",
  grn = "{GRN}",
  ylw = "{YLW}",
  blu = "{BLU}",
  mag = "{MAG}",
  cyn = "{CYN}",
  wht = "{WHT}",

  blkh = "{BLKH}",
  redh = "{REDH}",
  grnh = "{GRNH}",
  ylwh = "{YLWH}",
  bluh = "{BLUH}",
  magh = "{MAGH}",
  cynh = "{CYNH}",
  whth = "{WHTH}",

  bg10fg = "{BG:10:FG}",
  bg20fg = "{BG:20:FG}",
  bg30fg = "{BG:30:FG}",
  bg40fg = "{BG:40:FG}",
  bg50fg = "{BG:50:FG}",

  fg10bg = "{FG:10:BG}",
  fg20bg = "{FG:20:BG}",
  fg30bg = "{FG:30:BG}",
  fg40bg = "{FG:40:BG}",
  fg50bg = "{FG:50:BG}",
}
]]

local M = {}

M.setup = function()
	if vim.fn.isdirectory(config.CHROMASYNC_TEMPLATES_DIR) == 1 then
		local file = io.open(config.CHROMASYNC_TEMPLATE_FILE, "w")

		if not file then
			print("An error occurred while writing the template to `" .. config.CHROMASYNC_TEMPLATE_FILE .. "`")
			return nil
		end

		file:write(template)
		file:close()
	end
end

return M
