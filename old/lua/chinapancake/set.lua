vim.opt.nu = true


vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false

require('onedark').setup {
    style = 'darker',
    transparent = true,
    term_colors = true,

    colors = {
        bright_orange = "#ff8800"
    },
    highlights = {
        ["@keyword"] = {fg = '$blue'},
    }
}
require('onedark').load()
