return require('packer').startup(function(use)
  	-- packer
	use 'wbthomason/packer.nvim'

  	-- lsp
  	use 'neovim/nvim-lspconfig'

  	-- completion
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			{ "saadparwaiz1/cmp_luasnip", requires = { "L3MON4D3/LuaSnip", "rafamadriz/friendly-snippets" } },
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-cmdline",
			"petertriho/cmp-git",
			"f3fora/cmp-spell",
			"hrsh7th/cmp-path",
			"ray-x/cmp-treesitter",
			"lukas-reineke/cmp-under-comparator",
		},
	})

	-- treesitter
	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

	-- telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	  }

	-- nvim-tree 
	use {
  		'kyazdani42/nvim-tree.lua',
  		requires = { 'kyazdani42/nvim-web-devicons'},
  		tag = 'nightly'
	}

	-- colors
	use { "catppuccin/nvim", as = "catppuccin" }

	-- statusline
	use 'feline-nvim/feline.nvim'

	--tabs
	use {
		'romgrk/barbar.nvim',
		requires = {'kyazdani42/nvim-web-devicons'}
	}
	
	-- git
	use {
		'lewis6991/gitsigns.nvim',
	}
end)
