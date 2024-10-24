require("denco.lsp_server").setup_server("gopls")

vim.api.nvim_create_autocmd('BufWritePre', {
	pattern = '*.go',
	group = vim.api.nvim_create_augroup('go_format', { clear = true }),
    command = "lua vim.lsp.buf.format()"
})
