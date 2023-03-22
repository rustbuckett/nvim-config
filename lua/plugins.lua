return require('packer').startup(function()
    -- Packer can manage itself
	use {'wbthomason/packer.nvim'}

    -- A nice dashboard
	use {'goolord/alpha-nvim',
	config = function()
		require('config.alpha-nvim')
	end
	}
    
    -- Telescope - Fuzzy file search
    -- Currently no custom config
	use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.1',
	    requires = { {'nvim-lua/plenary.nvim'} }
	}

    -- My favorite theme
	use { "ellisonleao/gruvbox.nvim" }

    -- Filesystem browsing in a sidebar
	use {
	    'nvim-tree/nvim-tree.lua',
	    requires = { {'nvim-tree/nvim-web-devicons'} },
        config = function()
            require('config.nvim-tree')
        end
	}

    -- Better syntax highlighting among other things
	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('config.nvim-treesitter')
        end
	}

    -- A more informative and configurable status line
	use {
	    'nvim-lualine/lualine.nvim',
	    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require('nvim-lualine')
        end
	}

    -- Insert those handy indentation alignment lines
	use {'lukas-reineke/indent-blankline.nvim'}

    -- Real time file change indicators for git
	use {
	    'lewis6991/gitsigns.nvim',
	    config = function()
	      require('gitsigns').setup()
	    end
	}

    -- A REPL that runs in its own buffer
	use {'hkupty/iron.nvim'} -- I don't know if I need this afterall. I may just use terminal

    -- Manage your git repo from inside Neovim with a nice interface
	use { 'TimUntersberger/neogit', 
	    requires = { {'nvim-lua/plenary.nvim'} },
	    config = function()
		    require('neogit').setup()
	    end
	}

    -- Focus mode for editing
    use {
        "folke/zen-mode.nvim",
        config = function()
          require("zen-mode").setup()
        end
    }

    -- Creates match pairs for quotes and brackets
	use {
	    "windwp/nvim-autopairs",
    	    config = function() 
		require("nvim-autopairs").setup()
	    end --how do i move this to config?
	}

    -- Clickable tabs for buffers
    use {
        'akinsho/bufferline.nvim', 
        tag = "v3.*", 
        requires = 'nvim-tree/nvim-web-devicons',
        config = function()
            require("bufferline").setup()
        end
    }
	
    --[ I didn't realize I wanted these. Found on neovimcraft.com ]--
    -- Quick comments
	use {
	    'numToStr/Comment.nvim',
	    config = function()
	        require('Comment').setup()
	    end
	}

    -- TODO comments
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

    -- Preview markdown in a browser
    use {
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    }

    use {
        "williamboman/mason.nvim",
        config = function()
            require("config.mason")
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
