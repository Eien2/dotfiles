return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup {
      auto_restore = false,
      auto_session_suppress_dirs = { "~/", "~/downloads" },
    }

    vim.keymap.set("n", "<leader>wr", "<cmd>SessionRestore<cr>")
    vim.keymap.set("n", "<leader>ws", "<cmd>SessionSave<cr>")
  end
}
