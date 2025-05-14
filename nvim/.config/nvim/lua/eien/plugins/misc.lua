return {
  {
    "cjodo/convert.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    config = function()
      local convert = require('convert')

      convert.setup({
        keymaps = {
          focus_next = { "j", "<Down>", "<Tab>" },
          focus_prev = { "k", "<Up>", "<S-Tab>" },
          close = { "<Esc>", "<C-c>", 'qq' },
          submit = { "<CR>", "<Space>" },
        },
        modes = { "color", "size", "numbers" }
      })
    end

  },
}
