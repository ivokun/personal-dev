local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local b = null_ls.builtins

local sources = {

	-- webdev stuff
	-- b.formatting.deno_fmt,
	b.formatting.prettier.with({
		filetypes = {
			-- "javascript",
			-- "javascriptreact",
			-- "typescript",
			-- "typescriptreact",
			"vue",
			"css",
			"scss",
			"less",
			"html",
			-- "json",
			-- "jsonc",
			"yaml",
			"markdown",
			"markdown.mdx",
			"graphql",
			"handlebars",
		},
		extra_filetypes = { "astro" },
	}),
	b.formatting.eslint_d,
	b.formatting.terraform_fmt,

	-- Lua
	b.formatting.stylua,

	-- Shell
	b.formatting.shfmt,
	b.diagnostics.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),

	-- cpp
	b.formatting.clang_format,
	b.formatting.rustfmt,

	b.diagnostics.golangci_lint,
	b.formatting.gofmt,

	-- python
	b.diagnostics.flake8,
	b.formatting.autopep8,
	b.formatting.reorder_python_imports,
}

null_ls.setup({
	debug = true,
	sources = sources,
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					vim.lsp.buf.format({
						bufnr = bufnr,
						filter = function(client)
							return client.name == "null-ls"
						end,
					})
				end,
			})
		end
	end,
})
