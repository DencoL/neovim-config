require("denco.lsp_server").setup_server("rust_analyzer")

vim.api.nvim_create_autocmd('BufWritePre', {
	pattern = '*.rs',
	group = vim.api.nvim_create_augroup('rust_format', { clear = true }),
    command = "lua vim.lsp.buf.format()"
})
