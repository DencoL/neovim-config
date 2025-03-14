vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.visualbell = true
vim.opt.scrolloff = 8
vim.opt.showmode = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.showmatch = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.cmd("set noerrorbells")
vim.cmd("set nofixendofline")
vim.cmd("set signcolumn=yes")
vim.cmd("set colorcolumn=100")
vim.cmd("set completeopt=menu,menuone,noselect")
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set noswapfile")

vim.g.netrw_bufsettings = "noma nomod nu nobl nowrap ro"

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.hl.on_yank({
            higroup = 'IncSearch',
            timeout = 200,
        })
    end
})
