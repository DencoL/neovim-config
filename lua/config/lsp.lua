local lsp = require("lsp_server")

lsp.setup_server("rust_analyzer")

lsp.setup_server(
    "omnisharp",
    { "dotnet", os.getenv("UserProfile") .. "/omnisharp/OmniSharp.dll" },
    { analyze_open_documents_only = true },
    false)

require('lspconfig').lua_ls.setup {
    settings = {
        Lua = {
            workspace = {
                checkThirdParty = false,
                telemetry = { enable = false },
                library = {
                    "$HOME/.local/bin/lua-lsp/meta/3rd/love2d"
                }
            }
        }
    }
}
