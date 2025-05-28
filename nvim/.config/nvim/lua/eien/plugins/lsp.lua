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
      local signs = {
        [vim.diagnostic.severity.ERROR] = "",
        [vim.diagnostic.severity.WARN] = "",
        [vim.diagnostic.severity.HINT] = "",
        [vim.diagnostic.severity.INFO] = ""
      }
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      vim.lsp.enable({
        "html",
        "cssls",
        "ts_ls",
        "lua_ls",
        "marksman",
        "intelphense",
        "pyright",
        "bashls",
        "jsonls"
      })

      vim.lsp.config("*", {
        capabilities = capabilities,
      })

      vim.lsp.config("html", {
        filetypes = { "html", "templ", "php" },
      })

      vim.diagnostic.config({
        signs = {
          text = signs
        },
        virtual_text = true,
        underline = true,
        update_in_insert = false,
      })
    end,
  },
}
