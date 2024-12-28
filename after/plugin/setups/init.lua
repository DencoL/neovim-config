require("gitsigns").setup()
require("nvim_comment").setup()
require("nvim-surround").setup()
require("treesitter-context").setup{}
require("nvim-autopairs").setup{}

require "nvim-treesitter.configs".setup {
    highlight = { enable = true }
}

if vim.fn.has("win32") then
    require "nvim-treesitter.install".compilers = { "clang" }
end

require("lualine").setup {
    options = {
        theme = "catppuccin"
    },
    sections = {
        lualine_c = {
            { "filename", path = 3 },
            { "lsp_progress" }
        }
    }
}

require('illuminate').configure({
    providers = {
        'lsp',
        'treesitter'
    },
    delay = 200
})
