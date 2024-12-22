require("neovim-project").setup({
  -- Project directories
  projects = {
    -- "~/projects/*",
    -- "~/p*cts/*", -- glob pattern is supported
    -- "~/projects/repos/*",
    -- "~/.config/*",
    -- "~/work/*",
    "~/.config/*",
    "~/Programming Projects/*"
  },
  -- Path to store history and sessions
  datapath = vim.fn.stdpath("data"), -- ~/.local/share/nvim/
  -- Load the most recent session on startup if not in the project directory
  last_session_on_startup = true,
  -- Dashboard mode prevent session autoload on startup
  dashboard_mode = false,
  -- Timeout in milliseconds before trigger FileType autocmd after session load
  -- to make sure lsp servers are attached to the current buffer.
  -- Set to 0 to disable triggering FileType autocmd
  filetype_autocmd_timeout = 200,
  -- Keymap to delete project from history in Telescope picker
  forget_project_keys = {
      -- insert mode: Ctrl+d
      i = "<C-d>",
      -- normal mode: d
      n = "d"
  },

  -- Overwrite some of Session Manager options
  session_manager_opts = {
    autosave_ignore_dirs = {
      vim.fn.expand("~"), -- don't create a session for $HOME/
      "/tmp",
    },
    autosave_ignore_filetypes = {
      -- All buffers of these file types will be closed before the session is saved
      "ccc-ui",
      "gitcommit",
      "gitrebase",
      "qf",
      "toggleterm",
    },
  },
  -- Picker to use for project selection
  -- Options: "telescope", "fzf-lua"
  -- Fallback to builtin select ui if the specified picker is not available
  picker = {
    type = "telescope", -- or "fzf-lua"
    opts = {
      -- picker-specific options
    },
  },
})
