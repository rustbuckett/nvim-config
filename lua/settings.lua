--[ neovim ]--

--[ Some interface stuff ]--
vim.cmd [[hi Normal ctermbg=NONE]]
vim.cmd [[hi VertSplit cterm=NONE]]
vim.cmd [[hi EndOfBuffer ctermfg=NONE ctermbg=NONE]]
vim.opt.fillchars={eob=' '}
vim.wo.number = true
--vim.opt.splitbelow = true

vim.opt.number = true
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

--[ gruvbox ]--
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
