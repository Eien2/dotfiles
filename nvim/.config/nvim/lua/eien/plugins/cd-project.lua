return {
  "LintaoAmons/cd-project.nvim",
  tag = "v0.11.0",
  config = function()
    vim.keymap.set("n", "<leader>cd", "<cmd>CdProject<cr>")
    vim.keymap.set("n", "<leader>cm", "<cmd>CdProjectManualAdd<cr>")
  end,
}
