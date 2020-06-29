"""""""""""""""""""""""""""""
" CrafterJSS's VIMRC
"""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""

" Autoinstall vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'kovetskiy/sxhkd-vim'
Plug 'sheerun/vim-polyglot'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()
"""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""
" VARIABLES
"""""""""""""""""""""""""""""
let colorscheme = "onedark" " Set your colorscheme for vim and lightline


"""""""""""""""""""""""""""""
" Colors!!!
"""""""""""""""""""""""""""""
syntax on

" Per colorscheme configuration, set before colorscheme
if (colorscheme == "onedark")
	" One Dark Color Scheme 'joshdick/onedark.vim'
	let g:onedark_hide_endofbuffer=0 " Hides end of buffer fill lines if set to 1; default: 0
	let g:onedark_terminal_italics=1 " If supported, displays italicized comments; default: 0
	let g:onedark_termcolors=256 " Set to 256 for terminals which support 256 colors (default) or 16 to use native 16 colors
elseif (colorscheme == "nord")
	" Nord Color Scheme https://nordtheme.com
endif

" Set the colorscheme using the variable
execute "colorscheme ".colorscheme

" Lightline configuration
set laststatus=2
set noshowmode
let g:lightline = {
  \ 'colorscheme': colorscheme,
  \ }

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

" NERDTree
map <C-n> :NERDTreeToggle<CR>

