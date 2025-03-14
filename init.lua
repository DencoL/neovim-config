vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
vim.opt.rtp:append(vim.fn.stdpath("config") .. "/lua")

require("lazy").setup("plugins")

require("config.options")
require("config.keymaps")
require("config.lsp")
