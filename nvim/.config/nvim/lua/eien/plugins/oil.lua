return {
  'stevearc/oil.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
      },
      keymaps = {
        ["<C-h>"] = false,
        ["<C-c>"] = false,
        ["<M-h>"] = "actions.select_split",
        ["q"] = "actions.close",
        ["<C-q>"] = "actions.close",
      },
    })

    vim.keymap.set("n", "<leader>e", "<cmd>Oil<cr>")
    vim.keymap.set("n", "<leader>E", "<cmd>Oil .<cr>")
  end,
}
