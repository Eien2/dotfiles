return {
  "LintaoAmons/cd-project.nvim",
  tag = "v0.9.1",
  config = function()
    vim.keymap.set("n", "<leader>cd", "<cmd>CdProject<cr>")
    vim.keymap.set("n", "<leader>cm", "<cmd>CdProjectManualAdd<cr>")
  end,
}
