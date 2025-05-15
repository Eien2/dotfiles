-- leader key
vim.g.mapleader = " "

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- buffers
vim.keymap.set("n", "<leader>x", ":bw<cr>")
