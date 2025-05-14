return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "saghen/blink.cmp",
      {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } }
          }
        }
      }
    },
    config = function()
      vim.lsp.enable({
        "html",
        "cssls",
        "ts_ls",
        "lua_ls",
        "marksman",
        "phpactor",
        "pyright",
        "bashls",
        "jsonls"
      })
    end,
  }
}
