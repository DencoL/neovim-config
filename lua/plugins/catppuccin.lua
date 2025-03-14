return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function(theme)
      vim.g.catppuccin_flavour = "mocha"
      vim.cmd [[colorscheme catppuccin]]
      vim.cmd("let g:lightline = {'colorscheme': 'catppuccin'}")
      vim.cmd [[highlight LineNr guifg=#5b5d76]]

      theme.integrations = {
        barbar = true,
        native_lsp = {
            enabled = true
        },
        harpoon = true,
        cmp = true,
        telescope = true,
        gitsigns = true
      }
  end
}

