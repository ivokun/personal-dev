local M = {}

M.ui = {
	theme = "gruvbox_light",
	theme_toggle = { "gruvbox", "gruvbox_light" },
}

M.plugins = require("custom.plugins")

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M
