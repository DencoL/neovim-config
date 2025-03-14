return {
    {
        "terrortylor/nvim-comment",
        config = function()
            require("nvim_comment").setup()
        end
    },
    {
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup()
        end
    },
    { "machakann/vim-swap" }
}
