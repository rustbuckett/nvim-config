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
	use {
	    'nvim-lualine/lualine.nvim',
	    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	--indent_blankline
	use {'lukas-reineke/indent-blankline.nvim'}
	--gitsigns
	use {
	    'lewis6991/gitsigns.nvim',
	    config = function()
	      require('gitsigns').setup()
	    end
	}
	--iron.nvim
	--ale_linter
	--languagetool
	--neogit
	--use { 'TimUntersberger/neogit', 
	--    requires = { {'nvim-lua/plenary.nvim'} },
	--    config = function()
	--	require('neogit').setup()
	--    end
	--}
	--coc
	--zen-mode
	--auto-pairs
	use {
		"windwp/nvim-autopairs",
    	    config = function() 
		    require("nvim-autopairs").setup()
	    end --how do i move this to config?
	}
	--neoformat?
	--grammarous
	--tabline

end)
