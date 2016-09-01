set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mhartington/oceanic-next'
Plugin 'andreshazard/vim-logreview'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Colour scheme

"Make tabs work
"For Neovim 0.1.3 and 0.1.4
 let $NVIM_TUI_ENABLE_TRUE_COLOR=1

 " Or if you have Neovim > 0.1.5
 if (has("termguicolors"))
   set termguicolors
 endif

 " Theme
 syntax enable
 colorscheme OceanicNext
 set background=dark


set tabstop=4 "Show a tab as 4 spaces
set softtabstop=4 "Insert 4 spaces when tab is pressed while editing
set expandtab "Convert all tabs to spaces

set number
set cursorline
set wildmenu
set showmatch

inoremap jk <esc>

if (has('nvim'))
  tnoremap jk <C-\><C-n> 
endif

"airline setup
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'luna'
