vim.opt.termguicolors = true

local lackluster = require("lackluster")

lackluster.setup({
    disable_plugin = {
        bufferline = true,
        cmp = false,
        dashboard = false,
        flash = false,
        git_gutter = false,
        git_signs = false,
        headline = false,
        indentmini = false,
        lazy = false,
        lightbulb = false,
        lsp_config = false,
        mason = false,
        mini_diff = false,
        navic = false,
        noice = false,
        notify = false,
        oil = false,
        scollbar = false,
        telescope = false,
        todo_comments = false,
        tree = true,
        trouble = false,
        which_key = false,
        yanky = false,    
    },
})

vim.cmd("colorscheme lackluster-hack")

require("bufferline").setup{}
