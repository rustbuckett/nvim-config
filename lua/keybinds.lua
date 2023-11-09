--[ Custom keybindings go here ]--

-- Start by making keybindings easier to define

local map = vim.api.nvim_set_keymap

vim.g.mapleader = ' '

--[ keybinds for neovim itself ]
-- move around window splits easier
map('i', '<C-J>', '<C-W><C-J>', {})
map('i', '<C-K>', '<C-W><C-K>', {})
map('i', '<C-L>', '<C-W><C-L>', {})
map('i', '<C-H>', '<C-W><C-H>', {})
map('n', '<C-J>', '<C-W>j', {})
map('n', '<C-K>', '<C-W>k', {})
map('n', '<C-L>', '<C-W>l', {})
map('n', '<C-H>', '<C-W>h', {})
-- resizing windows
--map('n', '<C-S-.>', '<C-W>>', {})
--map('n', '<C-S-,>', '<C-W><', {})
--map('n', '<C-S-->', '<C-W>-', {})
--map('n', '<C-S-=>', '<C-W>+', {})

-- change gruvbox mode
-- later, I'll figure out how to "toggle" the setting
map('n', '<leader>ddd', ':lua vim.o.background="dark"<cr>', {})
map('n', '<leader>lll', ':lua vim.o.background="light"<cr>', {})

--[ keybinds for ZenMode ]
map('n', '<leader>zzz', ':ZenMode<cr>', {})

--[ keybinds for the Dashboard and Telescope ]
map('n', '<leader>ff', ':Telescope find_files<cr>', {})
map('n', '<leader>fo', ':Telescope oldfiles<cr>', {})
map('n', '<leader>fw', ':Telescope live_grep<cr>', {})
-- map('n', '<leader>fn', ':DashboardNewFile<cr>', {})
map('n', '<leader>bm', ':Telescope marks<cr>', {})
map('n', '<leader>ls', ':SessionLoad<cr>', {})
map('n', '<leader>ss', ':SessionSave<cr>', {})

--[ keybinds for NvimTree ]
map('n', '<leader>tt', ':NvimTreeToggle<cr>', {})

--[ keybinds for iron.nvim ]
--map <F5> <Cmd>lua require("iron").core.send(vim.api.nvim_buf_get_option(0,"ft"), vim.api.nvim_buf_get_lines(0, 0, -1, false))<Cr>
map('n', '<F5>', '<Cmd>lua require("iron").core.send(vim.api.nvim_buf_get_option(0,"ft"), vim.api.nvim_buf_get_lines(0, 0, -1, false))<Cr>)', {})
-- map('n', '<leader>t', '<Plug>(iron-send-motion)', {})
-- map('n', '<leader>v', '<Plug>(iron-visual-send)', {})
-- map('n', '<leader>r', '<Plug>(iron-repeat-cmd)', {})
-- map('n', '<leader>l', '<Plug>(iron-send-line)', {})
-- map('n', '<leader><CR>', '<Plug>(iron-cr)', {})
-- map('n', '<leader>i', '<plug>(iron-interrupt)', {})
-- map('n', '<leader>q', '<Plug>(iron-exit)', {})
-- map('n', '<leader>c', '<Plug>(iron-clear)', {})
-- iron also has a list of commands, see :h iron-commands for all available commands
map('n', '<leader>rs', '<cmd>IronRepl<cr>', {})
map('n', '<leader>rr', '<cmd>IronRestart<cr>', {})
map('n', '<leader>rf', '<cmd>IronFocus<cr>', {})
map('n', '<leader>rh', '<cmd>IronHide<cr>', {})

--[ keybinds for Refactoring ]
-- prompt for a refactor to apply when the remap is triggered
map("v", "<leader>rr", ":lua require('refactoring').select_refactor()<CR>", { noremap = true, silent = true, expr = false })
-- Remaps for the refactoring operations currently offered by the plugin
map("v", "<leader>re", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]], {noremap = true, silent = true, expr = false})
map("v", "<leader>rf", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]], {noremap = true, silent = true, expr = false})
map("v", "<leader>rv", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]], {noremap = true, silent = true, expr = false})
map("v", "<leader>ri", [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], {noremap = true, silent = true, expr = false})

-- Extract block doesn't need visual mode
map("n", "<leader>rb", [[ <Cmd>lua require('refactoring').refactor('Extract Block')<CR>]], {noremap = true, silent = true, expr = false})
map("n", "<leader>rbf", [[ <Cmd>lua require('refactoring').refactor('Extract Block To File')<CR>]], {noremap = true, silent = true, expr = false})

-- Inline variable can also pick up the identifier currently under the cursor without visual mode
map("n", "<leader>ri", [[ <Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], {noremap = true, silent = true, expr = false})

--[ keybinds for Bufferline ]--
map("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true, expr = false })
map("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true, expr = false })
map("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true, expr = false })
map("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true, expr = false })
map("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true, expr = false })
map("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true, expr = false })
map("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true, expr = false })
map("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true, expr = false })
map("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true, expr = false })
map("n", "<leader>-1", "<Cmd>BufferLineGoToBuffer -1<CR>", { noremap = true, silent = true, expr = false })

map("n", "<leader>]]", ":BufferLineCycleNext<CR>", { noremap = true, silent = true, expr = false })
map("n", "<leader>[[", ":BufferLineCycleNext<CR>", { noremap = true, silent = true, expr = false })
