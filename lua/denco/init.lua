if vim.fn.has("win32") then
    vim.cmd("language en_US")
end

local augroup = vim.api.nvim_create_augroup

local autocmd = vim.api.nvim_create_autocmd

local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 200,
        })
    end
})

require("denco.settings")
require("denco.packer")
