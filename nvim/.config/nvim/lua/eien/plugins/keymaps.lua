-- telescope
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fg", ":Telescope git_status<cr>")
vim.keymap.set("n", "<leader>fl", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<cr>")

-- oil
vim.keymap.set("n", "<leader>e", ":Oil .<cr>")

-- nvim-comment
vim.keymap.set({ "n", "v" }, "<leader>/", ":CommentToggle<cr>")

-- lsp
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)
