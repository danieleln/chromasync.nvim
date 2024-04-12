local M = {}

local HOME = vim.loop.os_homedir()

M.FILE_NAME = "chromasync-nvim.json"

-- TODO: look for the ENV VAR CHROMASYNC_CONFIG_DIR
M.CHROMASYNC_TEMPLATES_DIR = HOME .. "/.config/chromasync/templates/"
M.CHROMASYNC_TEMPLATE_FILE = M.CHROMASYNC_TEMPLATES_DIR .. M.FILE_NAME

M.CHROMASYNC_OUT_DIR = HOME .. "/.cache/chromasync/out/"
M.CHROMASYNC_OUT_FILE = M.CHROMASYNC_OUT_DIR .. M.FILE_NAME

return M
