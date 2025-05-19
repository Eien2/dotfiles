return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup {
      auto_restore = false,
      auto_session_suppress_dirs = { "~/", "~/downloads" },
    }
  end
}
