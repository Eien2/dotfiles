return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      dashboard = {},
    },
    keys = {
      { "<leader>lg", function() require("snacks").lazygit() end },
      { "<leader>gl", function() require("snacks").lazygit.log() end },
      { "<leader>rN", function() require("snacks").rename.rename_file() end },
      { "<leader>fc", function() require("snacks").picker.files({ cwd = vim.fn.stdpath("config") }) end },
      { "<leader>fk", function() require("snacks").picker.keymaps({ layout = "ivy" }) end },
      { "<leader>vh", function() require("snacks").picker.help() end },
    }
  }
}
