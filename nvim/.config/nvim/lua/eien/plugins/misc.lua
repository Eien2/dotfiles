return {
  {
    "cjodo/convert.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    config = function()
      local convert = require('convert')

      convert.setup({})
    end
  },
  {
    "LintaoAmons/cd-project.nvim",
    tag = "v0.9.1"
  },
  {
    "vyfor/cord.nvim",
    build = ":Cord update"
  },
  {
    "ya2s/nvim-cursorline",
    config = function()
      require("nvim-cursorline").setup {
        cursorline = {
          enable = false,
        },
        cursorword = {
          enable = true,
          min_length = 3,
          hl = { underline = true },
        }
      }
    end
  },
  {
    "sontungexpt/url-open",
    event = "VeryLazy",
    cmd = "URLOpenUnderCursor",
    config = function()
      local status_ok, url_open = pcall(require, "url-open")
      if not status_ok then
        return
      end
      url_open.setup({})
    end,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Local Keymaps (which-key)",
      },
    },
  },
  {
    "quentingruber/timespent.nvim",
  },
  {
    "johmsalas/text-case.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("textcase").setup({})
      require("telescope").load_extension("textcase")
    end,
    lazy = false,
  },
}
