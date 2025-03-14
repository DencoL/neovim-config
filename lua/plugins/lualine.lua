return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "arkav/lualine-lsp-progress"
    },
    opts = {
        options = {
            theme = "catppuccin",
        },
        sections = {
            lualine_c = {
                { "filename", path = 3 },
                { "lsp_progress" }
            }
        }
    }
}
