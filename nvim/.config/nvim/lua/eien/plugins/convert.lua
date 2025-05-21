return {
  "cjodo/convert.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local convert = require('convert')
    convert.setup({})

    vim.keymap.set("n", "<leader>cn", "<cmd>ConvertFindNext<cr>")
    vim.keymap.set("n", "<leader>cc", "<cmd>ConvertFindCurrent<cr>")
    vim.keymap.set("n", "<leader>ca", "<cmd>ConvertAll<cr>")
  end
}
