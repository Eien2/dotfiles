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
    end
  },
}
