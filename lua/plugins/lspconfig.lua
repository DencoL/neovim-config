return {
  "neovim/nvim-lspconfig",
  init = function()
      vim.diagnostic.config({
          virtual_text = true
      })
  end
}
