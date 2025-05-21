return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "debugloop/telescope-undo.nvim",
  },
  config = function()
    require("telescope").setup({})
    require("telescope").load_extension("undo")

    vim.keymap.set("n", "<leader>fs", "<cmd>Telescope find_files<cr>")
    vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_status<cr>")
    vim.keymap.set("n", "<leader>fl", "<cmd>Telescope live_grep<cr>")
    vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>")
    vim.keymap.set("n", "<leader>fu", "<cmd>Telescope undo<cr>")
  end,
}
