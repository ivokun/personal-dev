---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("custom.highlights")

M.ui = {
	theme = "gruvbox_light",
	theme_toggle = { "gruvbox", "gruvbox_light" },

	-- hl_override = highlights.override,
	hl_add = highlights.add,
	tabufline = {
		overriden_modules = function(modules)
			table.remove(modules, 4) -- removes buttons module cuz its at index 4
			table.insert(modules, modules[1]) -- adds nvimtree module ( its at index 1 ) , to end of the table
			table.remove(modules, 1) -- removes nvimtree module at index 1
		end,
	},
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M
