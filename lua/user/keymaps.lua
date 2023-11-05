M = {}
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

normal_mode = "n"
insert_mode = "i"
visual_mode = "v"


-- Better window navigation

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Vimspector
vim.cmd([[
nmap <F9> <cmd>call vimspector#Launch()<cr>
nmap <F5> <cmd>call vimspector#StepOver()<cr>
nmap <F8> <cmd>call vimspector#Reset()<cr>
nmap <F11> <cmd>call vimspector#StepOver()<cr>
nmap <F12> <cmd>call vimspector#StepOut()<cr>
nmap <F10> <cmd>call vimspector#StepInto()<cr>
]])

keymap('n', "Db", ":call vimspector#ToggleBreakpoint()<cr>", opts)
keymap('n', "Dw", ":call vimspector#AddWatch()<cr>", opts)
keymap('n', "De", ":call vimspector#Evaluate()<cr>", opts)

return M
