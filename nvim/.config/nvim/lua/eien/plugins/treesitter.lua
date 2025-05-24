return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
    auto_install = true,
    sync_install = false,
    additional_vim_regex_highlighting = false,
    highlight = {
      enable = true,
    },
  },
}
