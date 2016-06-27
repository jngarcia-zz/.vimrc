set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'tomasr/molokai'
Plugin 'zeis/vim-kolor'

Plugin 'lunaru/vim-less'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'elixir-lang/vim-elixir'

call vundle#end()
filetype plugin indent on

" CTRLP
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = 'node_modules\|tmp\|coverage\|_build\|deps'

syntax on
command! W :w
let mapleader = ","
set mouse=a

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

" Easy splitted window navigation
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l
" NERDTree
nmap <tab> :NERDTreeToggle<cr>
" Clipboard
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
nnoremap } <C-w>>
nnoremap { <C-w><lt>

" Airline
set laststatus=2

colorscheme koehler
