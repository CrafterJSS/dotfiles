"""""""""""""""""""""""""""""
" CrafterJSS's VIMRC
"""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'kovetskiy/sxhkd-vim'

call plug#end()
"""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""
" Colors!!!
"""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""
" Config Stuffs
"""""""""""""""""""""""""""""

" Turn on relativenumber (the toggle plugin is not loaded)
set number relativenumber

" Disable bells
autocmd! GUIEnter * set vb t_vb=

" Do not create .swp files
set noswapfile

" Show auto complete menus
set wildmenu

" Make wildmenu behave like bash completion
set wildmode=list:longest

" Enable mouse pointing
set mouse=a

" Fix backspace behavior
set backspace=indent,eol,start

" Use system clipboard
set clipboard+=unnamedplus

" Keep Undo history on buffer change
set hidden

"""""""""""""""""""""""
" Bindings
"""""""""""""""""""""""

" Comment block
vnoremap <silent> <C-k> :Commentary<cr>
