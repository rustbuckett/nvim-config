require("lazy").setup({

	-- A nice dashboard
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- Telescope - Fuzzy file search
	-- Currently no custom config
	{
		"nvim-telescope/telescope.nvim",
		version = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- My favorite theme
	"ellisonleao/gruvbox.nvim",

	-- Filesystem browsing in a sidebar
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- Better syntax highlighting among other things
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	-- A more informative and configurable status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	},

	-- Insert those handy indentation alignment lines
	"lukas-reineke/indent-blankline.nvim",

	-- Real time file change indicators for git
	{ "lewis6991/gitsigns.nvim" },

	-- A REPL that builds in its own buffer
	{ "Vigemus/iron.nvim" }, -- I don't know if I need this afterall. I may just use terminal

	-- Manage your git repo from inside Neovim with a nice interface
	{
		"NeogitOrg/neogit",
		dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = true
	},

	-- Focus mode for editing
	{ "folke/zen-mode.nvim" },

	-- Creates match pairs for quotes and brackets
	{ "windwp/nvim-autopairs" },

	-- Clickable tabs for buffers
	{
		"akinsho/bufferline.nvim",
		version = "v3.*",
		dependencies = "nvim-tree/nvim-web-devicons",
	},

	--[ I didn't realize I wanted these. Found on neovimcraft.com ]--
	-- Quick comments
	{ "numToStr/Comment.nvim" },

	-- TODO comments, just keyword followed by ':'
	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
	},

	{
		"ThePrimeagen/refactoring.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	},

	-- Preview markdown in a browser
	{
		"iamcco/markdown-preview.nvim",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

	-- Handles LSP, Linters, etc.
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

	-- giving nvim-cmp it's own section
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			{ "neovim/nvim-lspconfig" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline" },
			{ "hrsh7th/cmp-vsnip" },
			{ "hrsh7th/vim-vsnip" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "rafamadriz/friendly-snippets" },
		},
	},

	-- additional tools for rust
	{ "simrat39/rust-tools.nvim" },

	-- markdown syntax hiding and other stuff
	{ "ixru/nvim-markdown" },

	-- plugin to compile and execute code easily
	{ -- this plugin
		"Zeioth/compiler.nvim",
		cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
		dependencies = { "stevearc/overseer.nvim" },
		opts = {},
	},
	{ -- The task runner we use
		"stevearc/overseer.nvim",
		commit = "400e762648b70397d0d315e5acaf0ff3597f2d8b",
		cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
		opts = {
			task_list = {
				direction = "bottom",
				min_height = 25,
				max_height = 25,
				default_detail = 1,
			},
		},
	},

	-- Neovim DAP
	{
		"mfussenegger/nvim-dap",
	},
	{ -- DAP Python
		"mfussenegger/nvim-dap-python",
	},

	-- Nvim Formatter
	{
		"mhartington/formatter.nvim",
	},

    -- Codeium, the free Copilot alternative
    {
        "Exafunction/codeium.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",
        },
    },
    -- -- Github Copilot [[didn't realize it was a subscription!]]
    -- {
    --     "github/copilot.vim",
    -- },

	-- -- makes ordered and unordered lists easier
	-- {
	--     "gaoDean/autolist.nvim",
	--     ft = {
	--       "markdown",
	--       "text",
	--       "tex",
	--       "plaintex",
	--     },
	-- }

	-- TODO: languagetool (if I can find a lua version)
	-- TODO: grammarous (this is a vim tool, not lua)
	-- TODO: magma for Jupyter
})
