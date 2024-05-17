-- This file can be loaded by calling `lua require('plugins')` from your init.vim
print("hello from plugins")

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 	{
	'nvim-telescope/telescope.nvim',
	tag = '0.1.6',
	requires = { {'nvim-lua/plenary.nvim'} }
	}
  use 	{
	"rebelot/kanagawa.nvim",
  	as = "kanagawa",
	confing = function() vim.cmd('colorscheme kanagawa') end
	}
   use
    	{
	'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate'
	}
    use {'nvim/treesitter/nvim-treesitter', {run = ':TSUpdate'}}
    use {'theprimeagen/harpoon'}
    use {'mbbill/undotree'}
    use {'tpope/vim-fugitive'}
    use {
  	'VonHeikemen/lsp-zero.nvim',
  	branch = 'v3.x',
  	requires = {
   	 	{'williamboman/mason.nvim'},
    		{'williamboman/mason-lspconfig.nvim'},
    		{'neovim/nvim-lspconfig'},
    		{'hrsh7th/nvim-cmp'},
    		{'hrsh7th/cmp-nvim-lsp'},
    		{'L3MON4D3/LuaSnip'},
  }
}
end)

