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
}
