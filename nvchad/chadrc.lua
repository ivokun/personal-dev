local M = {}

M.ui = {
  theme = "gruvbox",
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
