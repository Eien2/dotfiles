return {
  {
    "arminveres/md-pdf.nvim",
    branch = "main",
    lazy = true,
    config = function()
      require("md-pdf").setup({
        margins = "1.5cm",
        preview_cmd = function() return "firefox" end,
        ignore_viewer_state = false,
        toc = true,
        highlight = "tango",
        fonts = nil,
        pandoc_user_args = nil,
        output_path = "/home/eien/documents/pdf",
        pdf_engine = "pdflatex",
      })

      vim.keymap.set("n", "<leader>,", function() require("md-pdf").convert_md_to_pdf() end)
    end
  },
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup({
        app = { "firefox" }
      })
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
}
