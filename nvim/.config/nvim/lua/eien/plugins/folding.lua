return {
  {
    "kevinhwang91/nvim-ufo",
    dependencies = {
      "kevinhwang91/promise-async",
    },

    config = function()
      require("ufo").setup({
        provider_selector = function(bufnr, filetype, buftype)
          return { "treesitter", "indent" }
        end
      })
    end,
  },
  {
    "luukvbaal/statuscol.nvim",
    config = function()
      local builtin = require("statuscol.builtin")
      require("statuscol").setup({
        segments = {
          { text = { "%s" },             click = "v:lua.ScSa" },
          { text = { builtin.lnumfunc }, click = "v:lua.ScLa", },
          {
            text = { " ", builtin.foldfunc, " " },
            condition = { builtin.not_empty, true, builtin.not_empty },
            click = "v:lua.ScFa"
          },
        }
      })
    end,
  }
}
