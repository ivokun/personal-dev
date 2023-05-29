local overrides = require("custom.plugins.overrides")

return {

	-- ["goolord/alpha-nvim"] = { disable = false } -- enables dashboard

	-- Override plugin definition options
	["neovim/nvim-lspconfig"] = {
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},

	-- overrde plugin configs
	["nvim-treesitter/nvim-treesitter"] = {
		override_options = overrides.treesitter,
	},

	["williamboman/mason.nvim"] = {
		override_options = overrides.mason,
	},

	["hrsh7th/nvim-cmp"] = {
		override_options = overrides.cmp,
	},

	-- Install a plugin
	["max397574/better-escape.nvim"] = {
		event = "InsertEnter",
		config = function()
			require("better_escape").setup()
		end,
	},

	-- code formatting, linting etc
	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},

	["alexghergh/nvim-tmux-navigation"] = {
		config = function()
			local nvim_tmux_nav = require("nvim-tmux-navigation")

			nvim_tmux_nav.setup({
				disable_when_zoomed = true, -- defaults to false
			})

			vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
			vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
			vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
			vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
			vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
			vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
		end,
	},

	["hashicorp/terraform-ls"] = {
		config = function()
			vim.api.nvim_create_autocmd({ "BufWritePre" }, {
				pattern = { "*.tf", "*.tfvars" },
				callback = vim.lsp.buf.format,
			})
		end,
	},

	-- ["zbirenbaum/copilot.lua"] = {
	-- 	event = "VimEnter",
	-- 	config = function()
	-- 		vim.defer_fn(function()
	-- 			require("copilot").setup({
	-- 				suggestion = {
	-- 					auto_trigger = true,
	-- 					keymap = {
	-- 						accept = "<Tab>",
	-- 					},
	-- 				},
	-- 				cmp = {
	-- 					enabled = true,
	-- 					method = "getCompletionsCycling",
	-- 				},
	-- 			})
	-- 		end, 100)
	-- 	end,
	-- },
	-- ["zbirenbaum/copilot-cmp"] = {
	-- 	after = { "copilot.lua" },
	-- 	config = function()
	-- 		require("copilot_cmp").setup()
	-- 	end,
	-- },

	["iamcco/markdown-preview.nvim"] = {
		run = "cd app && yarn install",
		ft = { "markdown" },
		cmd = { "MarkdownPreview" },
		config = function()
			vim.g.mkdp_auto_refresh = 1
			vim.g.mkdp_refresh_slow = 1
			vim.g.mkdp_command_for_global = 0
			vim.g.mkdp_echo_preview_url = 1
			vim.g.mkdp_port = 7777
			vim.g.mkdp_filetypes = { "markdown" }
			require("vgit").setup()
		end,
	},

	["tanvirtin/vgit.nvim"] = {
		after = { "nvim-web-devicons" },
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("vgit").setup()
		end,
	},
	-- remove plugin
	-- ["hrsh7th/cmp-path"] = false,
}
