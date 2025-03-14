return {
    "romgrk/barbar.nvim",
    dependencies = {
        "lewis6991/gitsigns.nvim",
        "kyazdani42/nvim-web-devicons"
    },
    opts = {
        icons = {
            buffer_index = true,
            filetype = { enabled = true }
        },
        animation = false
    },
    init = function()
        local nnoremap = require("keymap").nnoremap

        nnoremap("<A-h>", ":BufferPrevious<CR>")
        nnoremap("<A-l>", ":BufferNext<CR>")
        nnoremap("<A-S-h>", ":BufferMovePrevious<CR>")
        nnoremap("<A-S-l>", ":BufferMoveNext<CR>")
        nnoremap("<A-1>", ":BufferGoto 1<CR>")
        nnoremap("<A-2>", ":BufferGoto 2<CR>")
        nnoremap("<A-3>", ":BufferGoto 3<CR>")
        nnoremap("<A-4>", ":BufferGoto 4<CR>")
        nnoremap("<A-5>", ":BufferGoto 5<CR>")
        nnoremap("<A-6>", ":BufferGoto 6<CR>")
        nnoremap("<A-7>", ":BufferGoto 7<CR>")
        nnoremap("<A-8>", ":BufferGoto 8<CR>")
        nnoremap("<A-9>", ":BufferGoto 9<CR>")
        nnoremap("<A-p>", ":BufferPin<CR>")
        nnoremap("<A-w>", ":BufferClose<CR>")
        nnoremap("<A-q>", ":BufferCloseAllButCurrentOrPinned<CR>")
    end
}
