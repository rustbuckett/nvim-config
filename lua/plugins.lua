return require('packer').startup(function()
    -- Packer can manage itself
	use { 'wbthomason/packer.nvim' }

    -- A nice dashboard
	use { 'goolord/alpha-nvim',
          -- requires = { 'nvim-tree/nvim-web-devicons' },
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
	}

    -- Better syntax highlighting among other things
	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
	}

    -- A more informative and configurable status line
	use {
	    'nvim-lualine/lualine.nvim',
	    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
	}

    -- Insert those handy indentation alignment lines
	use { 'lukas-reineke/indent-blankline.nvim' }

    -- Real time file change indicators for git
	use { 'lewis6991/gitsigns.nvim' }

    -- A REPL that runs in its own buffer
	use { 'Vigemus/iron.nvim' } -- I don't know if I need this afterall. I may just use terminal

    -- Manage your git repo from inside Neovim with a nice interface
	use {
        'NeogitOrg/neogit', 
	    requires = {'nvim-lua/plenary.nvim'},
	}

    -- Focus mode for editing
    use { "folke/zen-mode.nvim" }

    -- Creates match pairs for quotes and brackets
	use { "windwp/nvim-autopairs" }

    -- Clickable tabs for buffers
    use {
        'akinsho/bufferline.nvim', 
        tag = "v3.*", 
        requires = 'nvim-tree/nvim-web-devicons',
    }
	
    --[ I didn't realize I wanted these. Found on neovimcraft.com ]--
    -- Quick comments
	use { 'numToStr/Comment.nvim' }

    -- TODO comments, just use keyword followed by ':'
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    }

    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            {"nvim-lua/plenary.nvim"},
            {"nvim-treesitter/nvim-treesitter"}
        },
    }

    -- Preview markdown in a browser
    use {
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    }

    -- Handles LSP, Linters, etc.
    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }
    
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
            {'hrsh7th/vim-vsnip'},
            {'rafamadriz/friendly-snippets'}
        },
    }

    -- markdown syntax hiding and other stuff
    use { 'ixru/nvim-markdown' }

    -- -- makes ordered and unordered lists easier
    -- use {
    --     "gaoDean/autolist.nvim",
    --     ft = {
    --       "markdown",
    --       "text",
    --       "tex",
    --       "plaintex",
    --     },
    -- }

	-- TODO: languagetool (if I can find a lua version)
	-- TODO: neoformat (a plugin to autoformat code)
	-- TODO: grammarous (this is a vim tool, not lua)
    -- TODO: magma for Jupyter

end)
