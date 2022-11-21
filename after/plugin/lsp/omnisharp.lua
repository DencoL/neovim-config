require("denco.lsp_server").setup_server(
    "omnisharp",
    { "dotnet", os.getenv("UserProfile") .. "/omnisharp/OmniSharp.dll" },
    { analyze_open_documents_only = true },
    false)
