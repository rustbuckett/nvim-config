--[ neovim ]--

--[ gruvbox ]--
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

--[ Some interface stuff ]--
vim.cmd [[hi Normal guibg=NONEctermbg=NONE]]
vim.cmd [[hi VertSplit cterm=NONE]]
vim.cmd [[hi EndOfBuffer ctermfg=NONE ctermbg=NONE]]
vim.opt.fillchars={eob=' '}
vim.wo.number = true
vim.opt.termguicolors = true

vim.opt.number = true -- show numbers
vim.opt.title = true -- set the window title to filename
vim.opt.cursorline = true -- highlight current line
vim.opt.smartcase = true -- ignore case when searching unless I type capital
vim.opt.linebreak = true -- wrap lines at convenient points
vim.opt.scrolloff = 5 -- number of lines to keep above and below

--[ tab stuff
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = true

--[ Spell Checker Stuff ]--
vim.opt.spelllang='en_us'
vim.opt.spellfile='$HOME/.config/nvim/spell/en.utf-8.add'
--vim.opt.thesaurus=$HOME/.vim/thesaurus/thesaurus.txt
vim.opt.spellsuggest='best,9'
vim.cmd [[hi clear SpellBad]]
vim.cmd [[hi clear SpellCap]]
vim.cmd [[hi SpellBad ctermfg=red]]
vim.cmd [[hi SpellCap ctermfg=green]]

