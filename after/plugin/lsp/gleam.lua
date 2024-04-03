require("denco.lsp_server").setup_server("gleam")

vim.api.nvim_create_autocmd('FileType', {
	pattern = 'gleam',
	group = vim.api.nvim_create_augroup('gleam_ident', { clear = true }),
    command = "setlocal shiftwidth=2 tabstop=2"
})
