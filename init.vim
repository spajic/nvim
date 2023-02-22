" ==============
" PLUGINS
" ==============

" Color schemes
call plug#begin('~/.vim/plugged')

Plug 'rafi/awesome-vim-colorschemes'
Plug 'junegunn/vim-peekaboo' " See what's inside buffers (registers)
"Plug 'ap/vim-buftabline' " plugin for tabs
Plug 'scrooloose/nerdtree' " file tree
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fuzzy search
Plug 'junegunn/fzf.vim'
Plug 'zefei/vim-wintabs' " Another plugin for tabs
Plug 'zefei/vim-wintabs-powerline'
Plug 'roman/golden-ratio'
Plug 'jpo/vim-railscasts-theme' " OceanicNext looks better
Plug 'carakan/new-railscasts-theme'
Plug 'github/copilot.vim'
Plug 'rmagatti/auto-session' " Automatically save and restore sessions (qa for quit all, nvim to open current folder)
Plug 'thoughtbot/vim-rspec' " Run rspec tests
Plug 'tpope/vim-commentary' " Comment out code: gc to comment and uncomment
Plug 'ellisonleao/gruvbox.nvim' " Color scheme

" NeoTest
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'nvim-neotest/neotest'
Plug 'olimorris/neotest-rspec'
call plug#end()

nnoremap <SPACE> <Nop>
let mapleader=" " " remap leader from \ to SPACE

" copy current file path to clipboard
map <Leader>cp :let @+=@% <CR> 			
" jj to escape insert mode
imap jj <Esc> 

" ===========
" NERDTree
" ===========
let NERDTreeShowHidden=1 " Always show dot (hidden) files
let NERDTreeQuitOnOpen=1 " Close the NERDTree after opening a file


map <C-k> :WintabsNext<CR>
map <C-j> :WintabsPrevious<CR>
map <C-t>c :WintabsClose<CR>
map <C-t>u :WintabsUndo<CR>

" RSpec shortcuts for thoughtbot/vim-rspec
" map <Leader>rs :call RunNearestSpec()<CR> 
" map <Leader>rf :call RunCurrentSpecFile()<CR>
" map <Leader>ra :call RunAllSpecs()<CR>
map <Leader>rl :call RunLastSpec()<CR>
let g:rspec_runner = "os_x_iterm" " does not seem to work

" NeoTest
lua << EOF
require("neotest").setup({
  adapters = {
    require('neotest-rspec')({
      rspec_cmd = function()
        return vim.tbl_flatten({
          "bundle",
          "exec",
          "rspec",
        })
      end
    }),
  }
})
EOF

map <Leader>rs :lua require("neotest").run.run(vim.fn.expand('%')) <CR> 


" Leader + n to open the NT
map <leader>n :NERDTreeFind<CR> 
map <leader><leader> :GFiles<CR>

colorscheme OceanicNext

" Prevent a user from using arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Clear search highlights with Enter
nnoremap <CR> :noh<CR> 

" Navigate tabs
"nnoremap <C-j> :tabnext<CR>
"nnoremap <C-k> :tabprev<CR>

set hidden " allow to switch to another buffer without saving current

set number " do show line numbers
set textwidth=120

set smartcase " case insensitive search unless there is a capital letter

