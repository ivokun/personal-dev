vim.wo.relativenumber = true
vim.opt_local.conceallevel = 1
local autocmd = vim.api.nvim_create_autocmd
-- local set = vim.opt
-- set.termguicolors = true
-- set.t_Co=256

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
