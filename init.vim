call plug#begin("~/.config/nvim/plugged")
  " Plugin Section
  Plug 'dracula/vim'
  Plug 'psliwka/vim-smoothie'
  Plug 'scrooloose/nerdtree'
  Plug 'Shougo/deoplete.nvim',  {'do': ':UpdateRemotePlugins' }
  Plug 'deoplete-plugins/deoplete-clang'
  Plug 'dense-analysis/ale'
  Plug 'morhetz/gruvbox'
call plug#end()

" Keymappings

let mapleader = ","
" ,wsp removes all trailing whitespace from file
nnoremap <leader>wsp :%s/\s\+$//<cr>:let @/=''<CR>

" ,wv does a vertical split and moves control to new window
nnoremap <leader>wv <C-w>v<C-w>l

" ,ws does a horizontal split and moves control to new window
nnoremap <leader>ws <C-w>s<C-w>j

" ,, switches to next window
nnoremap <leader>, <C-w><C-w>

" ,ec edits the config file
nnoremap <leader>ec :e $HOME/.config/nvim/init.vim<CR>

" Terminal escape mode shortcut
tnoremap <Esc> <C-\><C-n>

" Search
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" Navigation
" Easier window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Jump to respective ([{}])
nnoremap <tab> %
vnoremap <tab> %
" Force normal mode nav. 
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Text
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Map ; to : so that it is easier to save files
nnoremap ; :

" Save when alt+tab away from window
au FocusLost * :wa


" Appearance
if (has ("termguicolors"))
  set termguicolors
endif
syntax enable
set number relativenumber
set nu rnu
set bg=dark
"colorscheme gruvbox
colorscheme dracula

" Tabs
set tabstop=4
set shiftwidth=4
set shiftround
set softtabstop=4
set expandtab

" General environment stuff
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile

" NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automatically close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

