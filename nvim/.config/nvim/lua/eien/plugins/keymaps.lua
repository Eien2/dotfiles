-- telescope
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", ":Telescope git_status<cr>")
vim.keymap.set("n", "<leader>fl", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")
vim.keymap.set("n", "<leader>fu", ":Telescope undo<cr>")

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

-- markdowns
vim.keymap.set("n", "<leader>,", function() require("md-pdf").convert_md_to_pdf() end)

-- trouble
vim.keymap.set("n", "<leader>xx", ":Trouble diagnostics toggle<cr>")
vim.keymap.set("n", "<leader>xX", ":Trouble diagnostics toggle filter.buf=0<cr>")
vim.keymap.set("n", "<leader>cs", ":Trouble symbols focus=false<cr>")
vim.keymap.set("n", "<leader>cl", ":Trouble lsp toggle focus=false win.position=right<cr>")
vim.keymap.set("n", "<leader>xL", ":Trouble loclist toggle<cr>")
vim.keymap.set("n", "<leader>xQ", ":Trouble qflist toggle<cr>")

-- auto-sessions
vim.keymap.set("n", "<leader>wr", ":SessionRestore<cr>")
vim.keymap.set("n", "<leader>ws", ":SessionSave<cr>")
