-- LSP Diagnostics Options Setup 
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

sign({name = 'DiagnosticSignError', text = '󰅚'})
sign({name = 'DiagnosticSignWarn', text = ''})
sign({name = 'DiagnosticSignHint', text = '󰌶'})
sign({name = 'DiagnosticSignInfo', text = ''})

vim.diagnostic.config({
    -- virtual_text = false,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { fg = "#FF6363", bg="#4B252C",undercurl = true })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { fg = "#FA973A", bg="#403733",undercurl = true })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', { fg = "#387EFF", bg="#20355A",undercurl = true })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', { fg = "#254435", bg="#16C53B",undercurl = true })

vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
