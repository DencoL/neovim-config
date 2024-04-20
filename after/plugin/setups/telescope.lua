require("telescope").setup{}
require("telescope").setup{
    defaults = {
        file_ignore_patterns = { ".idea", "obj", "bin", "target" },
        mappings = {
            i = {
                ["<Esc>"] = require("telescope.actions").close
            }
        },
    },
    pickers = {
        find_files = {
            follow = true
        },
    }
}
require("telescope").load_extension("ui-select")
require('telescope').load_extension("fzf")
