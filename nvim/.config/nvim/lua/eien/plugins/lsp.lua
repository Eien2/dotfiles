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
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      require("lspconfig").lua_ls.setup { capabilities = capabilities }
      require("lspconfig").ts_ls.setup { capabilities = capabilities }
      require("lspconfig").cssls.setup { capabilities = capabilities }
      require("lspconfig").html.setup { capabilities = capabilities }
      require("lspconfig").phpactor.setup { capabilities = capabilities }
      require("lspconfig").bashls.setup { capabilities = capabilities }
    end,
  }
}
