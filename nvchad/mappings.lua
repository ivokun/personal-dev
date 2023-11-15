local M = {}

M.general = {
	n = {
		[";"] = { ":", "command mode", opts = { nowait = true } },
		-- close all buffers but this one
		["<leader>dd"] = { "<cmd> %bd|e#<cr>", "close all buffers but this one" },
		["<C-h>"] = { "<Cmd>NvimTmuxNavigateLeft<Cr>", "Move left window" },
		["<C-l>"] = { "<Cmd>NvimTmuxNavigateRight<Cr>", "Move right window" },
		["<C-j>"] = { "<Cmd>NvimTmuxNavigateDown<Cr>", "Move down window" },
		["<C-k>"] = { "<Cmd>NvimTmuxNavigateUp<Cr>", "Move up window" },
		["<leader>tt"] = {
			function()
				require("base46").toggle_theme()
			end,
		},
	},
}

M.nvimtree = {
	n = {
		["<leader>fr"] = { "<cmd>NvimTreeToggle<cr>", "toggle file explorer" },
	},
}

-- more keybinds!

return M
