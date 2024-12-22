--[ Dashboard ]--
require('dashboard').setup {
    theme = 'hyper', --  theme is doom and hyper default is hyper
    disable_move = false,    --  default is false disable move keymap for hyper
    shortcut_type = 'letter',   --  shorcut type 'letter' or 'number'
    shuffle_letter = true,  --  default is true, shortcut 'letter' will be randomize, set to false to have ordered letter.
    change_to_vcs_root = false, -- default is false,for open file in hyper mru. it will change to the root of vcs
    config = {},    --  config used for theme
    hide = {
      statusline = true,    -- hide statusline default is true
      tabline = true,       -- hide the tabline
      winbar = true,        -- hide winbar
    },
    preview = {
      -- command       -- preview command
      -- file_path     -- preview file path
      -- file_height   -- preview file height
      -- file_width    -- preview file width
    },
}

--vim.g.dashboard_disable_statusline = 1
--vim.g.dashboard_default_executive = "telescope"
--vim.g.dashboard_custom_header = {
--        "                ",
--        "                ",
--        "                ",
--        "                ",
--        "                ",
--        "                ",
--        "                ",
--        " [[ downtime ]] ",
--        "                ",
--        "                ",
--        "                ",
--        "                ",
--        "                ",
--        "                ",
--        "                ",
--}
--vim.g.dashboard_custom_section = {
--   a = { description = { "  Find File                 <Leader> f f" }, command = "Telescope find_files" },
--   b = { description = { "  Recents                   <Leader> f o" }, command = "Telescope oldfiles" },
--   c = { description = { "  Find Word                 <Leader> f w" }, command = "Telescope live_grep" },
--   d = { description = { "洛 New File                  <Leader> f n" }, command = "DashboardNewFile" },
--   e = { description = { "  Bookmarks                 <Leader> b m" }, command = "Telescope marks" },
--   f = { description = { "  Load Last Session         <Leader> s l" }, command = "SessionLoad" },
--}
