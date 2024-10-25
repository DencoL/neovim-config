require("telescope").setup{}
require("telescope").setup{
    defaults = {
        file_ignore_patterns = { ".idea", "obj", "bin", "target", "node_modules", ".git" },
        mappings = {
            i = {
                ["<Esc>"] = require("telescope.actions").close
            }
        },
    },
    pickers = {
        find_files = {
            follow = true,
            hidden = true
        },
        live_grep = {
            additional_args = function(_)
                return { "--hidden" }
            end
        }
    },
    lsp_references = {
        fname_width = 50,
        show_line = false,
        include_declaration = false
    }
}
require("telescope").load_extension("ui-select")
require('telescope').load_extension("fzf")
