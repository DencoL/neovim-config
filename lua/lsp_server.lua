local M = {}

local lspconfig = require("lspconfig")
local lsp_signature = require("lsp_signature")
local illuminate = require("illuminate")
local nnoremap = require("keymap").nnoremap

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local border = {
    { "╭", "FloatBorder" },
    { "─", "FloatBorder" },
    { "╮", "FloatBorder" },
    { "│", "FloatBorder" },
    { "╯", "FloatBorder" },
    { "─", "FloatBorder" },
    { "╰", "FloatBorder" },
    { "│", "FloatBorder" }
}

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

function M.setup_server(server_name, cmd, other_settings, skipIlluminate)
    capabilities.textDocument.completion.completionItem.snippetSupport = false;
    local server = lspconfig[server_name]

    local setup = {
        cmd = cmd or server.document_config.default_config.cmd,
        capabilities = capabilities,
        on_attach = function(client, bufnr)
            print("lsp connected")
            lsp_signature.on_attach(lsp_signature, bufnr)
            if skipIlluminate == nil then
                illuminate.on_attach(client)
            end
            nnoremap('<leader>rn', vim.lsp.buf.rename)
            nnoremap('<leader>a', vim.lsp.buf.code_action)
            nnoremap('<leader>cf', vim.lsp.buf.format)
        end
    }

    if other_settings == nil then
        server.setup(setup)
    else
        server.setup(vim.tbl_extend("force", setup, other_settings))
    end
end

return M
