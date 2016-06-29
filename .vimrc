set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Utilities
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-fugitive'

" Customizations
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Ruby on Rails
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'

" Elixir on Phoenix
Plugin 'elixir-lang/vim-elixir'
Plugin 'slim-template/vim-slim'

" HTML / CSS
Plugin 'lunaru/vim-less'

call vundle#end()
filetype plugin indent on

" Settings
syntax on
command! W :w
let mapleader = ","

set mouse=a
set encoding=utf-8
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set switchbuf=useopen
set nolazyredraw
set notimeout
set ttimeout
set ttimeoutlen=10
set showbreak=↪
set autoindent
set tabstop=2
set softtabstop=2
set textwidth=0
set shiftwidth=2
set expandtab
set ignorecase
set smartcase
set showmatch
set showcmd
set cursorline
set incsearch
set hlsearch
set backspace=indent,eol,start
set noswapfile

" Easy splitted window navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l
" Moving split division
nnoremap } <C-w>>
nnoremap { <C-w><lt>
" Tabbing multiple lines
vnoremap < <gv
vnoremap > >gv
" NERDTree
nmap <tab> :NERDTreeToggle<cr>
" Clipboard
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
"EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" CTRLP
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = 'node_modules\|tmp\|coverage\|_build\|deps'
" Airline
set laststatus=2

colorscheme pablo
