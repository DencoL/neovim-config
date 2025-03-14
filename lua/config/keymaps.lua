local nnoremap = require("keymap").nnoremap
local vnoremap = require("keymap").vnoremap

nnoremap("<leader>e", ":Ex<CR>")
nnoremap("<leader>ll", ":LazyGit<CR>")
nnoremap("<leader>li", ":LspInfo<CR>")
nnoremap("<leader>lr", ":LspRestart<CR>")
nnoremap("<C-j>", "<esc>:m .+1<CR>==")
nnoremap("<C-k>", "<esc>:m .-2<CR>==")
nnoremap("K", "<cmd>lua vim.lsp.buf.hover()<CR>")

nnoremap("<leader>E", "<cmd> lua vim.diagnostic.open_float()<CR>")
nnoremap("ge", "<cmd> lua vim.diagnostic.goto_next()<CR>")
nnoremap("gE", "<cmd> lua vim.diagnostic.goto_prev()<CR>")
nnoremap("grr", "<cmd>lua vim.lsp.codelens.refresh()<CR>")

nnoremap("<leader>w", ":w<CR>")
nnoremap("<leader>W", ":wa<CR>")

nnoremap("<C-u>", "<C-u>zz")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("n", "nzz")

nnoremap("<C-_>", ":CommentToggle<CR>")
vnoremap("<C-_>", ":'<,'>CommentToggle<CR>")

nnoremap("<leader>u", ":UndotreeToggle<CR>");
