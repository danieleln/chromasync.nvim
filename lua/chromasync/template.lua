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
}
]]

local M = {}

M.setup = function()
	if vim.fn.isdirectory(config.CHROMASYNC_TEMPLATES_DIR) == 1 then
		local file = io.open(config.CHROMASYNC_TEMPLATE_FILE, "w")

		if not file then
			print("An error occurred while writing the template to `" .. config.CHROMASYNC_TEMPLATE_FILE .. "`")
			return
		end

		file:write(template)
		file:close()
	end
end

return M
