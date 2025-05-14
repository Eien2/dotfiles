local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  require("eien.plugins.auto-session"),
  require("eien.plugins.colorscheme"),
  require("eien.plugins.comment"),
  require("eien.plugins.completion"),
  require("eien.plugins.lsp"),
  require("eien.plugins.lualine"),
  require("eien.plugins.oil"),
  require("eien.plugins.telescope"),
  require("eien.plugins.auto-pairs"),
  require("eien.plugins.treesitter"),
  require("eien.plugins.misc")
})
