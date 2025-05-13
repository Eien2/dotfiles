return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        pickers = {
          find_files = {
            hidden = true,
            find_command = {
              "rg",
              "--files",
              "--hidden",
              "--follow",
              "--smart-case",
              "--glob=!**/.git/*",
              "--glob=!**/package-lock.json/*",
              "--glob=!**/yarn.lock/*",
              "--glob=!**/build/*",
            },
          },
        },
      })
    end,
  },
}
