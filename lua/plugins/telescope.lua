function go_to_definition()
    if vim.bo.filetype == "cs" then
        vim.cmd("lua require('omnisharp_extended').telescope_lsp_definitions()")
    else
        vim.cmd("lua require('telescope.builtin').lsp_definitions()")
    end
end

return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-telescope/telescope-ui-select.nvim"
    },
    opts = {
        defaults = {
            file_ignore_patterns = { ".idea", "obj", "bin", "target", "node_modules", ".git" },
            mappings = {
                i = {
                    ["<esc>"] = require("telescope.actions").close
                }
            }
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
    },
    init = function()
        local nnoremap = require("keymap").nnoremap

        nnoremap("<leader>n", "<cmd>lua require('telescope.builtin').find_files()<CR>")
        nnoremap("<leader>m", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>")
        nnoremap("<leader>M", "<cmd>lua require('telescope.builtin').resume()<CR>")
        nnoremap("<leader>fn", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
        nnoremap("<leader>fm", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>")

        nnoremap("gu", "<cmd>lua require('telescope.builtin').lsp_references()<CR>")
        -- nnoremap("gd", "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>")
        nnoremap("gd", "<cmd>lua go_to_definition()<CR>")
        nnoremap("gi", "<cmd>lua require('telescope.builtin').lsp_implementations()<CR>")
        nnoremap("grr", "<cmd>lua vim.lsp.codelens.refresh()<CR>")

        require("telescope").load_extension("ui-select")
        require('telescope').load_extension("fzf")
    end
}
