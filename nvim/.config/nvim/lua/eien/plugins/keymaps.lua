-- telescope
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", ":Telescope git_status<cr>")
vim.keymap.set("n", "<leader>fl", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")

-- oil
vim.keymap.set("n", "<leader>e", ":Oil .<cr>")

-- nvim-comment
vim.keymap.set({ "n", "v" }, "<leader>/", ":CommentToggle<cr>")

-- lsp
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)

-- convert
vim.keymap.set("n", "<leader>cn", ":ConvertFindNext<cr>")
vim.keymap.set("n", "<leader>cc", ":ConvertFindCurrent<cr>")
vim.keymap.set("n", "<leader>ca", ":ConvertAll<cr>")

-- cd-project
vim.keymap.set("n", "<leader>cd", ":CdProject<cr>")
vim.keymap.set("n", "<leader>cm", ":CdProjectManualAdd<cr>")

-- pomo
vim.keymap.set("n", "<leader>sp", ":TimerSession pomodoro")

-- url-open
vim.keymap.set("n", "<leader>o", ":<esc>:URLOpenUnderCursor<cr>")

-- timespent
vim.keymap.set("n", "<leader>ts", ":ShowTimeSpent<cr>")

-- text-case
vim.keymap.set("n", "ga.", ":TextCaseOpenTelescope<cr>")
