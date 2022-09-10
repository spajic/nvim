" ==============
" PLUGINS
" ==============

" Color schemes
call plug#begin('~/.vim/plugged')

Plug 'rafi/awesome-vim-colorschemes'

call plug#end()

colorscheme OceanicNext

" Prevent a user from using arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
