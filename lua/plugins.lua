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
	use {'lukas-reineke/indent-blankline.nvim'}
	use {
	    'lewis6991/gitsigns.nvim',
	    config = function()
	      require('gitsigns').setup()
	    end
	}
	use {'hkupty/iron.nvim'} -- I don't know if I need this afterall. I may just use terminal
	use { 'TimUntersberger/neogit', 
	    requires = { {'nvim-lua/plenary.nvim'} },
	    config = function()
		    require('neogit').setup()
	    end
	}
    use {
        "folke/zen-mode.nvim",
        config = function()
          require("zen-mode").setup()
        end
    }
	use {
	    "windwp/nvim-autopairs",
    	    config = function() 
		require("nvim-autopairs").setup()
	    end --how do i move this to config?
	}
    use {
        'akinsho/bufferline.nvim', 
        tag = "v3.*", 
        requires = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("bufferline").setup()
        end
    }
	
    -- I didn't realize I wanted these. Found on neovimcraft.com
	use {
	    'numToStr/Comment.nvim',
	    config = function()
	        require('Comment').setup()
	    end
	}
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
          require("todo-comments").setup()
        end
    }
    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            {"nvim-lua/plenary.nvim"},
            {"nvim-treesitter/nvim-treesitter"}
        },
        config = function()
            require("refactoring").setup()
        end
    }

    -- giving nvim-cmp it's own section
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-cmdline'},
            {'hrsh7th/cmp-vsnip'},
            {'hrsh7th/vim-vsnip'}
        },
        config = function()
            require("cmp").setup()
        end
    }

	--TODO languagetool (if I can find a lua version)
	--TODO neoformat (a plugin to autoformat code)
	--TODO grammarous (this is a vim tool, not lua)
    --TODO magma for Jupyter

end)
