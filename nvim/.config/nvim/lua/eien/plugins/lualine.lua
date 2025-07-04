return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "lackluster",
			},
			tabline = {},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "lsp_status" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = {},
				lualine_z = { "location" },
			},
		})
	end,
}
