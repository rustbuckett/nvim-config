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

--[ keybinds for the Dashboard and Telescope ]
map('n', '<leader>ff', ':Telescope find_files<cr>', {})
map('n', '<leader>fo', ':Telescope oldfiles<cr>', {})
map('n', '<leader>fw', ':Telescope live_grep<cr>', {})
map('n', '<leader>fn', ':DashboardNewFile<cr>', {})
map('n', '<leader>bm', ':Telescope marks<cr>', {})
map('n', '<leader>ls', ':SessionLoad<cr>', {})
map('n', '<leader>ss', ':SessionSave<cr>', {})

--[ keybinds for NvimTree ]
map('n', '<leader>tt', ':NvimTreeToggle<cr>', {})

--[ keybinds for iron.nvim ]
--map <F5> <Cmd>lua require("iron").core.send(vim.api.nvim_buf_get_option(0,"ft"), vim.api.nvim_buf_get_lines(0, 0, -1, false))<Cr>
map('n', '<F5>', '<Cmd>lua require("iron").core.send(vim.api.nvim_buf_get_option(0,"ft"), vim.api.nvim_buf_get_lines(0, 0, -1, false))<Cr>)', {})
map('n', '<leader>t', '<Plug>(iron-send-motion)', {})
map('n', '<leader>v', '<Plug>(iron-visual-send)', {})
map('n', '<leader>r', '<Plug>(iron-repeat-cmd)', {})
map('n', '<leader>l', '<Plug>(iron-send-line)', {})
map('n', '<leader><CR>', '<Plug>(iron-cr)', {})
map('n', '<leader>i', '<plug>(iron-interrupt)', {})
map('n', '<leader>q', '<Plug>(iron-exit)', {})
map('n', '<leader>c', '<Plug>(iron-clear)', {})
