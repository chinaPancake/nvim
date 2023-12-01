local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
---@diagnostic disable-next-line: missing-parameter
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  -- snapshot = "july-24",
  snapshot_path = fn.stdpath "config" .. "/snapshots",
  max_jobs = 50,
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
    prompt_border = "rounded", -- Border style of prompt popups.
  },
}


-- Install your plugins here
return packer.startup(function(use)
	-- Plugin Mangager
	use "wbthomason/packer.nvim" -- Have packer manage itself
	use 'williamboman/mason.nvim'    
	use 'williamboman/mason-lspconfig.nvim'
    use "lukas-reineke/lsp-format.nvim"

	use 'neovim/nvim-lspconfig' 
	use 'simrat39/rust-tools.nvim'
	-- Completion framework:
	use 'hrsh7th/nvim-cmp' 

	-- LSP completion source:
	use 'hrsh7th/cmp-nvim-lsp'

	-- Useful completion sources:
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'                             
	use 'hrsh7th/cmp-path'                              
	use 'hrsh7th/cmp-buffer'                            
	use 'hrsh7th/vim-vsnip'      

    use 'lvimuser/lsp-inlayhints.nvim'
	use 'simrat39/inlay-hints.nvim'
	use 'nvim-telescope/telescope.nvim'
    use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-lua/plenary.nvim'
    
    -- colored lines
    use {"folke/trouble.nvim", dependencies = {"nvim-tree/nvim-web-devicons"}}
    use {
    'chikko80/error-lens.nvim',
    requires = {'nvim-telescope/telescope.nvim'}
}

    -- Quality of life
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
} -- easy comenting
	use { 'm-demare/hlargs.nvim' }	
	use 'lewis6991/impatient.nvim'
	use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
 } --file tree
  use "lukas-reineke/indent-blankline.nvim"
use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}
	-- ColorScheme
	use "olimorris/onedarkpro.nvim"
	use "ellisonleao/gruvbox.nvim"

    -- Pretty line
    use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
