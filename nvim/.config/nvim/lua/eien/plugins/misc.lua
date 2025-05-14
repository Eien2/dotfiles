return {
  {
    "cjodo/convert.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    config = function()
      local convert = require('convert')

      convert.setup({})
    end
  },
  {
    "LintaoAmons/cd-project.nvim",
    tag = "v0.9.1"
  },
  {
    "vyfor/cord.nvim",
    build = ":Cord update"
  },
  {
    "ya2s/nvim-cursorline",
    config = function()
      require("nvim-cursorline").setup {
        cursorline = {
          enable = false,
        },
        cursorword = {
          enable = true,
          min_length = 3,
          hl = { underline = true },
        }
      }
    end
  },
}
