return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "debugloop/telescope-undo.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")

    telescope.load_extension("undo")
    telescope.load_extension("harpoon")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
          },
        },
      },
    })

    vim.keymap.set("n", "<leader>fs", "<cmd>Telescope find_files<cr>")
    vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_status<cr>")
    vim.keymap.set("n", "<leader>fl", "<cmd>Telescope live_grep<cr>")
    vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>")
    vim.keymap.set("n", "<leader>fu", "<cmd>Telescope undo<cr>")
    vim.keymap.set("n", "<leader>fh", "<cmd>Telescope harpoon marks<cr>")
  end,
}
