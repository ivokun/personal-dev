local M = {}

M.treesitter = {
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
	},
}

M.mason = {
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
	},
}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

M.cmp = {
	-- preselect = cmp.PreselectMode.None,
	sources = {
		{ name = "copilot" },
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "nvim_lua" },
		{ name = "path" },
	},
}

return M
