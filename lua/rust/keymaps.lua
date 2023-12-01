M = {}
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
vim.cmd 'let mapleader = ","'

normal_mode = "n"
insert_mode = "i"
visual_mode = "v"
terminal_mode = "t"

-- Better window navigation

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-v>", "<C-w>v", opts)
keymap("n", "<C-s>", "<C-w>s", opts)

-- Start python file from Function keys
keymap("n", "<F9>", ":!cargo build <CR>", opts) -- Cargo build
keymap("n", "<F10>", "<C-w>s :terminal py % <CR>i", opts) -- Start program with python (file with input())

-- keymp for splitting vindow
keymap("n", "<leader>v", ":ToggleTerm direction=horizontal <CR>", opts)
keymap("n", "<leader>s", ":ToggleTerm size=100 direction=vertical <CR>", opts)

-- Resising window
keymap("n", "<leader>+", "<C-W>=",opts)

-- Set ctrl + f for "/" in insert mode
keymap("i", "<C-f>", "<esc>/", opts)

--Nvim-Tree Toggle
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
-- Sey keymap for leader key on space


return M

