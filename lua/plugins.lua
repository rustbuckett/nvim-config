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
	use {'hkupty/iron.nvim'}
	--TODO ale_linter -> this may actually be nvim-lint and could be nvim-lint managed by mason
	--TODO languagetool
	use { 'TimUntersberger/neogit', 
	    requires = { {'nvim-lua/plenary.nvim'} },
	    config = function()
		    require('neogit').setup()
	    end
	}
--[[ 	TODO coc, or some other autocomplete/hint plugin 
--      this is going to be little more involved than the other plugins
--      I think I want to use nvim-cmp, but it includes snippet engines
--      and language servers and all kinds of stuff
--      or I may use coq-nvim. I mean, it's fast as FUCK.
--]]
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
	--TODO neoformat?
	--TODO grammarous
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



end)
