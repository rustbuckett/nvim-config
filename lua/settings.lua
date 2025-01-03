--[ neovim ]--

--[ gruvbox ]--
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

--[ Some interface stuff ]--
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#1d2021" })
-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none", ctermbg = "none" })
-- vim.api.nvim_set_hl(0, "EndOfBuffer", { ctermfg = "NONE", ctermbg = "NONE" })
-- vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#665c54", bg = "NONE" })
vim.opt.fillchars={eob=' '}
vim.wo.number = true
vim.opt.termguicolors = true
vim.opt.shell = "zsh"

vim.opt.number = true -- show numbers
vim.opt.title = true -- set the window title to filename
vim.opt.cursorline = true -- highlight current line
vim.opt.smartcase = true -- ignore case when searching unless I type capital
vim.opt.linebreak = true -- wrap lines at convenient points
vim.opt.scrolloff = 5 -- number of lines to keep above and below
vim.opt.undofile = true -- persistent undo

--[ tab stuff ]--
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = true

--[ Spell Checker Stuff ]--
vim.opt.spelllang='en_us'
vim.opt.spell = true
vim.opt.spellsuggest='best,9'
vim.cmd [[hi clear SpellBad]]
vim.cmd [[hi clear SpellCap]]
vim.cmd [[hi SpellBad cterm=underline]]
vim.cmd [[hi SpellCap ctermfg=green]]

--[ autocomplete settings ]--
--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortmess: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
-- vim.api.nvim_set_option('updatetime', 300)

--[ Setting for Prettier to autoformat on save ]--
-- vim.api.nvim_create_autocmd("BufWritePre", {
--     pattern = "*.html",
--     callback = function()
--         vim.lsp.buf.format({ timeout_ms = 1000 })
--     end,
-- })

--[ this might make a border around the whole window ]--
--it does, but it breaks other stuff
-- vim.api.nvim_open_win(0, true, {
--   relative = 'editor',
--   width = vim.o.columns,
--   height = vim.o.lines,
--   row = 0,
--   col = 0,
--   style = 'minimal',
--   border = 'double'
-- })

