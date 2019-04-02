set nocompatible
filetype off


" Add to runtime path for fzf
set rtp+=/usr/local/opt/fzf
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" Air-vim for tthat awesome status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'pboettch/vim-cmake-syntax'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'morhetz/gruvbox'
Plugin 'dracula/vim', {'as':'dracula'}
Plugin 'octol/vim-cpp-enhanced-highlight'						" Additional cxx highlighting
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
"
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ---- colorscheme Setup ----
colorscheme dracula
" ---- gruvbox Setup ----
"colorscheme gruvbox
"set background=dark
"let g:gruvbox_contrast_dark='soft'
"let g:gruvbox_improved_warnings='1'
"let g:gruvbox_improved_strings='1'


" ---- Airline Setup ----
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_theme = 'molokai'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" ---- octol/vim-cpp-enhanced-highlight Setup ----
let g:cpp_class_scope_highlight = 1


" ---- General Setup ----
set number
syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set autoindent
set incsearch								" highlight matches incrementally
highlight Search cterm=NONE ctermfg=grey ctermbg=blue
highlight IncSearch cterm=NONE ctermfg=grey ctermbg=blue
set ignorecase								" ignore case when searching
set noerrorbells							" turn off that annoying error bell
set list									" show invisible characters
set listchars=tab:▸\ ,trail:▝,eol:¬ 		" ... but only show tabs, trailing, whitespace
