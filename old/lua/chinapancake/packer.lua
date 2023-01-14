vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'navarasu/onedark.nvim'
    use {
    'nvim-tree/nvim-tree.lua',
     requires = {
       'nvim-tree/nvim-web-devicons', -- optional, for file icons
     },
     tag = 'nightly' -- optional, updated every week. (see issue #1193)
     }
end)
