local M = {}

M.ui = {
	theme = "one_light",
	theme_toggle = { "gruvbox", "one_light" },
}

M.plugins = require("custom.plugins")

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M
