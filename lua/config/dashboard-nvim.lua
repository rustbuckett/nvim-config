--[ Dashboard ]--
require('dashboard').setup {
  theme = 'hyper' --  theme is doom and hyper default is hyper
  config = {},    --  config used for theme
  hide = {
--    statusline    -- hide statusline default is true
--    tabline       -- hide the tabline
--    winbar        -- hide winbar
  },
  preview = {
--    command       -- preview command
--    file_path     -- preview file path
--    file_height   -- preview file height
--    file_width    -- preview file width
  },
}

		config = function()
			require('dashboard').setup {
			  -- config
			}
		end,
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

