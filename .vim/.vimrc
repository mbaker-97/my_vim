"When moving to new environment:
"pip install doq for vim-pydocstring
"set path to doq in pydocstring_doq_path


set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Install plugins here

Plugin 'VundleVim/Vundle.vim'
"This is for colorscheme:
Plugin 'vim-airline/vim-airline' "This is for airline
Plugin 'preservim/nerdtree'
"Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-syntastic/syntastic'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'preservim/nerdcommenter'
Plugin 'heavenshell/vim-pydocstring', {'do' : 'make install'} "Python autodoc
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Other colorschemes
"Plugin 'lifepillar/vim-solarized8'
"Plugin 'tomasr/molokai'
"Plugin 'joshdick/onedark.vim'
"Plugin 'sonph/onehalf', {'rtp': 'vim/'}
"Plugin 'rakr/vim-one'
"
call vundle#end() "end vundle
filetype plugin indent on "enable plugin, filetype, and indent
set autoindent " allow for autoindent
set shiftround
set shiftwidth=4 
set smarttab 
set tabstop=4
set softtabstop=4
set backspace=indent,eol,start "enable backspace
autocmd Filetype yaml setlocal ts=2 sw=2
syntax on "Set syntax highlighting to on
set t_Co=256
let g:afterglow_blackout=1 "Increase contrast for colorscheme
colorscheme afterglow
set backspace =indent,eol,start " Allow backspace to work

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
"highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000
set background=dark
set number "display absolute line number
set relativenumber "display relative linenumber
set cursorline " provide line under where cursor currently is
set history=1000 "undo history buffer of 1000
set belloff=all "Shut vim up. Really why were those bells there anyway?
set wildmenu "allows tabbing when using shell commands
set wrap "enable line wrapping
set showmatch "shows matching parentheses, brackets, etc
set title " set title of window
set colorcolumn=80

set incsearch "search as chars entered
set hlsearch "highlight search results
set ignorecase "ignore case by default during searches
set smartcase "enable case when search starts with uppercase
set wildmenu "enable visual menu for autocomplete
set lazyredraw "stop vim from redrawing during macros and other operations it does not need to
set t_8b=^[[48;2;%lu;%lu;%lum "For colorscheme in tmux
set t_8f=^[[38;2;%lu;%lu;%lum "For colrscheme in tmux"
set viminfo='101,<20000 " max number of lines to copy into the register
set noswapfile "Get rid of the unholy swap files

let mapleader = " "

set splitbelow "Defaults vim window splitting so window is on bottom
set splitright "Defaults vim window splitting so new window is on right
"Remaps to make moving between window splits easier
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

let g:NERDSpaceDelims = 1 "Add space behind comment delimiters by default

"Remap so that leader (space) o and O add new line without going to insert
"mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

"Pydocstring options
"let g:pydocstring_doq_path = "/usr/local/bin/doq"
"let g:pydocstring_formatter = 'sphinx'




let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:ultisnips_python_style="sphinx"
