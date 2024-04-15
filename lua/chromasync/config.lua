local util = require("chromasync.util")
local M = {}

local HOME = vim.loop.os_homedir() .. "/"

local CHROMASYNC_CONFIG_DIR = os.getenv("CHROMASYNC_CONFIG_DIR") or HOME .. ".config/chromasync/"
local CHROMASYNC_CACHE_DIR  = os.getenv("CHROMASYNC_CACHE_DIR")  or HOME .. ".cache/chromasync/"

M.FILE_NAME = "chromasync-nvim.json"

M.CHROMASYNC_TEMPLATES_DIR = CHROMASYNC_CONFIG_DIR .. "templates/"
M.CHROMASYNC_TEMPLATE_FILE = M.CHROMASYNC_TEMPLATES_DIR .. M.FILE_NAME

M.CHROMASYNC_OUT_DIR  = CHROMASYNC_CACHE_DIR .."out/"
M.CHROMASYNC_OUT_FILE = M.CHROMASYNC_OUT_DIR .. M.FILE_NAME

-- Builds the directories
util.mkdir(M.CHROMASYNC_TEMPLATES_DIR)
util.mkdir(M.CHROMASYNC_OUT_DIR)

return M
