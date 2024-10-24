vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    -- Looks
    use "folke/tokyonight.nvim"
    use "kyazdani42/nvim-web-devicons"
    use { "catppuccin/nvim", as = "catppuccin" }

    -- LSP and IDE-like features
    use "neovim/nvim-lspconfig"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "nvim-lua/plenary.nvim"
    use "nvim-treesitter/nvim-treesitter"
    use "ray-x/lsp_signature.nvim"
    use "Hoffs/omnisharp-extended-lsp.nvim"
    use "romgrk/barbar.nvim"
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    use "windwp/nvim-autopairs"
    use "nvim-treesitter/nvim-treesitter-context"
    use "RRethy/vim-illuminate"
    use "mbbill/undotree"

    -- Code manipulation
    use "terrortylor/nvim-comment"
    use "kylechui/nvim-surround"
    use "machakann/vim-swap"

    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-ui-select.nvim"

    -- Lualine
    use "nvim-lualine/lualine.nvim"
    use "arkav/lualine-lsp-progress"

    -- Git
    use "lewis6991/gitsigns.nvim"
    use "kdheepak/lazygit.nvim"

    -- Other
    use "lewis6991/impatient.nvim"
end)
