return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				{
					javascript = { "prettierd", "prettier", stop_after_first = true },
					jsx = { "prettierd", "prettier", stop_after_first = true },
					html = { "prettierd", "prettier", stop_after_first = true },
					css = { "prettierd", "prettier", stop_after_first = true },
					json = { "prettierd", "prettier", stop_after_first = true },
					markdown = { "prettierd", "prettier", stop_after_first = true },
          php = { "pretty-php" }
				},
				{
					bash = { "beautysh" },
					zsh = { "beautysh" },
					sh = { "beautysh" },
				},
        {
          cpp = { "clang-format" },
          cs = { "clang-format" },
          c = { "clang-format" },
        },
			},
		})
	end,
}
