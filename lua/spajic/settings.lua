-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.opt.signcolumn = 'yes'
vim.o.number = true -- enable line numbers
vim.o.relativenumber = true -- enable relative line numbers
vim.o.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim.
vim.o.mouse = 'a' -- enable mouse, sometimes it is convenient

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10 -- start scrolling 10 lines before reaching top or bottom of the page
vim.opt.colorcolumn = '80' -- visual reminder to not have long string

-- switch layout in vim with ctrl-^ (system layout stays En)
-- https://habr.com/ru/post/98393/
vim.cmd('set keymap=russian-jcukenwin')
vim.opt.iminsert = 0
vim.opt.imsearch = 0

vim.opt.spell = true
vim.opt.spelllang = {'ru_yo', 'en_us'}
