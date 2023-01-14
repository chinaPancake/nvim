
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

-- Start python file from Function keys
keymap("n", "<F9>", ":!py % <CR>", opts) -- Start script (file without inputs())
keymap("n", "<F10>", "<C-w>s :terminal py % <CR>i", opts) -- Start program (file with input())

return M
