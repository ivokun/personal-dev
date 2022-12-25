local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    -- close all buffers but this one
    ["<leader>dd"] = { "<cmd> %bd|e#<cr>", "close all buffers but this one" },
  },
}

-- more keybinds!

return M
