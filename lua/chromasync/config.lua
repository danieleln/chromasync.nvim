local M = {}

-- TODO: look for the ENV VAR CHROMASYNC_CONFIG_DIR
M.CHROMASYNC_TEMPLATES_DIR = vim.loop.os_homedir() .. "/.config/chromasync/templates/"
M.CHROMASYNC_TEMPLATE_FILE = M.CHROMASYNC_TEMPLATES_DIR .. "chromasync-nvim.lua"

return M
