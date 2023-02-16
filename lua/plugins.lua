return require('packer').startup(function()
        -- Packer can manage itself
        use {'wbthomason/packer.nvim'}
	use {'goolord/alpha-nvim'}
	use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.1',
	    requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { "ellisonleao/gruvbox.nvim" }
	use {
	    'nvim-tree/nvim-tree.lua',
	    requires = { {'nvim-tree/nvim-web-devicons'} }
	}
	use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
	}

end)
