local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

vim.keymap.set("n", "<leader>x", ":bw<cr>")

vim.keymap.set("n", "<C-k>", ":wincmd k<cr>")
vim.keymap.set("n", "<C-j>", ":wincmd j<cr>")
vim.keymap.set("n", "<C-h>", ":wincmd h<cr>")
vim.keymap.set("n", "<C-l>", ":wincmd l<cr>")

vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

vim.keymap.set("n", "<leader>f", function()
	require("conform").format({ async = true })
end)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>ls", "<cmd>Lazy sync<cr>")
