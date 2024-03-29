return {

	-- ["goolord/alpha-nvim"] = { disable = false } -- enables dashboard

	-- Override plugin definition options
	-- ["neovim/nvim-lspconfig"] = {
	-- 	config = function()
	-- 		require("plugins.configs.lspconfig")
	-- 		require("custom.plugins.lspconfig")
	-- 	end,
	-- },
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},

	-- overrde plugin configs
	-- ["nvim-treesitter/nvim-treesitter"] = {
	-- 	override_options = overrides.treesitter,
	-- },
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
	ensure_installed = {
		"vim",
		"lua",
		"html",
		"css",
		"typescript",
		"javascript",
		"c",
		"hcl",
		"astro",
		"svelte",
		"prisma",
		"python",
		"elixir",
		"heex",
		"eex",
		"rust",
	},
    },
	},

	-- ["williamboman/mason.nvim"] = {
	-- 	override_options = overrides.mason,
	-- },
	{
		"williamboman/mason.nvim",
		opts = {

	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev stuff
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"eslint-lsp",
		"deno",
		"terraform-ls",
		"astro-language-server",
		"svelte-language-server",
		"prisma-language-server",
		"golangci-lint-langserver",
		"golangci-lint",
		"pyright",
		"python-lsp-server",
		"autopep8",
		"elixir-ls",
		"rust-analyzer",
	},
    },
	},

	-- ["hrsh7th/nvim-cmp"] = {
	-- 	opts = overrides.cmp,
	-- },
	-- {
	-- 	"hrsh7th/nvim-cmp",
	-- 	opts = overrides.cmp,
	-- },

	-- Install a plugin
	-- ["max397574/better-escape.nvim"] = {
	-- 	event = "InsertEnter",
	-- 	config = function()
	-- 		require("better_escape").setup()
	-- 	end,
	-- },
	{
		"max397574/better_escape.nvim",
		event = "InsertEnter",
		config = function()
			require("better_escape").setup()
		end,
	},

	-- code formatting, linting etc
	-- ["jose-elias-alvarez/null-ls.nvim"] = {
	-- 	after = "nvim-lspconfig",
	-- 	config = function()
	-- 		require("custom.plugins.null-ls")
	-- 	end,
	-- },
	-- {
	-- 	"jose-elias-alvarez/null-ls.nvim",
	-- 	after = "nvim-lspconfig",
	-- 	config = function()
	-- 		require("custom.plugins.null-ls")
	-- 	end,
	-- },

	-- ["alexghergh/nvim-tmux-navigation"] = {
	-- 	config = function()
	-- 		local nvim_tmux_nav = require("nvim-tmux-navigation")
	--
	-- 		nvim_tmux_nav.setup({
	-- 			disable_when_zoomed = true, -- defaults to false
	-- 		})
	--
	-- 		vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
	-- 		vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
	-- 		vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
	-- 		vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
	-- 		vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
	-- 		vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
	-- 	end,
	-- },
	{
		"alexghergh/nvim-tmux-navigation",
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

	-- ["hashicorp/terraform-ls"] = {
	-- 	config = function()
	-- 		vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	-- 			pattern = { "*.tf", "*.tfvars" },
	-- 			callback = vim.lsp.buf.format,
	-- 		})
	-- 	end,
	-- },
	{
		"hashicorp/terraform-ls",
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
	{
		"zbirenbaum/copilot.lua",
		event = "VimEnter",
		config = function()
			vim.defer_fn(function()
				require("copilot").setup({
					suggestion = {
						auto_trigger = true,
						keymap = {
							accept = "<Tab>",
						},
					},
					cmp = {
						enabled = true,
						method = "getCompletionsCycling",
					},
				})
			end, 100)
		end,
	},

	-- ["zbirenbaum/copilot-cmp"] = {
	-- 	after = { "copilot.lua" },
	-- 	config = function()
	-- 		require("copilot_cmp").setup()
	-- 	end,
	-- },
	{
		"zbirenbaum/copilot_cmp",
		after = { "copilot.lua" },
		config = function()
			require("copilot_cmp").setup()
		end,
	},

	-- ["tanvirtin/vgit.nvim"] = {
	-- 	after = { "nvim-web-devicons" },
	-- 	requires = { "nvim-lua/plenary.nvim" },
	-- 	config = function()
	-- 		require("vgit").setup()
	-- 	end,
	-- },
	{
		"tanvirtin/vgit.nvim",
		after = { "nvim-web-devicons" },
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("vgit").setup()
		end,
	},

	-- ["iamcco/markdown-preview.nvim"] = {
	-- 	run = "cd app && yarn install",
	-- 	ft = { "markdown" },
	-- 	cmd = { "MarkdownPreview" },
	-- 	config = function()
	-- 		vim.g.mkdp_auto_refresh = 1
	-- 		vim.g.mkdp_refresh_slow = 1
	-- 		vim.g.mkdp_command_for_global = 0
	-- 		vim.g.mkdp_echo_preview_url = 1
	-- 		vim.g.mkdp_port = 7777
	-- 		vim.g.mkdp_filetypes = { "markdown" }
	-- 	end,
	-- },
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
			vim.g.mkdp_auto_refresh = 1
			vim.g.mkdp_refresh_slow = 1
			vim.g.mkdp_command_for_global = 0
			vim.g.mkdp_echo_preview_url = 1
			vim.g.mkdp_port = 7777
		end,
		ft = { "markdown" },
	},

	-- ["tpope/vim-fugitive"] = {},
	{
		"tpope/vim-fugitive",
	},

	-- remove plugin
	-- ["hrsh7th/cmp-path"] = false,
	{
		"hrsh7th/cmp-path",
		enabled = false,
	},
}
