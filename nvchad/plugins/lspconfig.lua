local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

local servers = {
  "lua_ls",
	"html",
	"cssls",
	"tsserver",
	"clangd",
	"terraformls",
	"astro",
	"eslint",
	"golangci_lint_ls",
	"pyright",
	"elixirls",
	"rust_analyzer",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
