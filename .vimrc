set exrc     " Use a local .vimrc file in the working directory, if present
set secure   " restrict usage of some commands in non-default .vimrc files

set nocompatible              " be iMproved, required
filetype off                  " required

" Syntax highlighting
syntax on

set showcmd             " display incomplete commands
" set showmode
set laststatus=2        " Always display the status line

" Default Tab length, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set shiftround

" for html files 2 spaces
au Filetype html setlocal ts=2 sw=2 expandtab
au Filetype javascript setlocal ts=2 sw=2 expandtab

" numbers
set number
set relativenumber
set numberwidth=5
set cursorline          " highlight the current line
set ruler

" Scrolling
set scrolloff=4         "Start scrolling when we're 8 lines away from margins

" Change <Leader>
let mapleader = ","

" Set folding
set foldmethod=indent
set foldlevelstart=10

" Faster navigation between splits
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" More natural split opening
set splitbelow
set splitright

" Easier file saving and closing
nnoremap <leader>ww :w<cr>
nnoremap <leader>wa :wa<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>qq :q<cr>
nnoremap <leader>qa :qa<cr>


"set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('~/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'chriskempson/base16-vim'
Plugin '29decibel/codeschool-vim-theme'
Plugin 'w0ng/vim-hybrid'
Plugin 'docunext/closetag.vim'
Plugin 'tpope/vim-surround'
Plugin 'raimondi/delimitmate'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'        " Better Javascript syntax highlighting
Plugin 'mxw/vim-jsx'                    " JSX highlighting and indenting
let g:jsx_ext_required = 0              " Enable JSX highlighting in .js files
" Plugin 'ternjs/tern_for_vim'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"call vundle#config#require(g:bundles)

" Map a shortcut to open NERDTree
" map <C-n> :NERDTreeToggle<CR>

" Close vim if the only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDComment config
map <C-n> :NERDTreeToggle<CR>

" NERDComment config
let g:NERDSpaceDelims = 1

" Solarized config
syntax enable
set background=dark
" let g:hybrid_custom_term_colors = 1
colorscheme hybrid

" vim airline config
let g:airline_theme='base16_chalk'

