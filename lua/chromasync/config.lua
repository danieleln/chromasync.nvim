local M = {}

local HOME = vim.loop.os_homedir()

-- TODO: look for the ENV VAR CHROMASYNC_CONFIG_DIR
M.CHROMASYNC_TEMPLATES_DIR = HOME .. "/.config/chromasync/templates/"
M.CHROMASYNC_TEMPLATE_FILE = M.CHROMASYNC_TEMPLATES_DIR .. "chromasync-nvim.lua"

M.CHROMASYNC_OUT_FILE = HOME .. "/.cache/chromasync/out/chromasync-nvim.lua"

return M
