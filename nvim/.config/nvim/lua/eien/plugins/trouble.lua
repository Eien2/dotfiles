return {
	"folke/trouble.nvim",
	cmd = "Trouble",
	config = function()
		vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>")
		vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>")
		vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols focus=false<cr>")
		vim.keymap.set("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>")
		vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>")
		vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>")
	end,
}
