-- leader key
vim.g.mapleader = " "

-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- buffers
vim.keymap.set("n", "<leader>x", ":bw<cr>")

-- navigation
vim.keymap.set("n", "<C-k>", ":wincmd k<cr>")
vim.keymap.set("n", "<C-j>", ":wincmd j<cr>")
vim.keymap.set("n", "<C-h>", ":wincmd h<cr>")
vim.keymap.set("n", "<C-l>", ":wincmd l<cr>")

-- lsp
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end)
