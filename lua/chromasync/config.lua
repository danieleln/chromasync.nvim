local util = require("chromasync.util")
local M = {}

local TMP_DIR = "/tmp/chromasync.nvim/"

M.FILE_NAME = "chromasync-nvim.json"

M.CHROMASYNC_TEMPLATES_DIR = TMP_DIR .. "template/"
M.CHROMASYNC_TEMPLATE_FILE = M.CHROMASYNC_TEMPLATES_DIR .. M.FILE_NAME

M.CHROMASYNC_OUT_DIR = TMP_DIR
M.CHROMASYNC_OUT_FILE = M.CHROMASYNC_OUT_DIR .. M.FILE_NAME

-- Builds the directories
util.mkdir(M.CHROMASYNC_TEMPLATES_DIR)
util.mkdir(M.CHROMASYNC_OUT_DIR)

return M
