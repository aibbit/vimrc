set nocompatible            " vi compatible is LAME
set number                  " show line number
"set ruler                  " show the cursor position
set showcmd
set cursorline              " show the line under the row
set wildmenu
set showmode
set autoread
set backup
set lazyredraw

set showmatch               " auto matching brackets

set scrolloff=5
set history=50
set whichwrap+=<,>,h,l

set clipboard=unnamed
set backspace=indent,eol,start
set mouse=a
set encoding=utf-8

" Enable filetype plugins
filetype plugin on
filetype indent on
"-----------------------general color setting---------------------------
syntax on                   " syntax highlighting
set t_Co=256

set background=dark
"-----------------------general indenting setting-----------------------
set ai                      " auto indenting
set si                      " smart indenting
set wrap                    " warp line
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent

" set list
" set listchars=tab:>-,trail:-

" Linebreak on 500 characters
set lbr
set tw=500

"-----------------------general search setting------------------------
set hlsearch        " Highlight search results
exec "nohlsearch"
set incsearch       " Makes search act like search in modern browsers
set ignorecase      " Ignore case when searching
set smartcase       " When searching try to be smart about cases
set magic           " For regular expressions turn magic on

"-----------------------general key setting---------------------------
let mapleader=' '
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>

map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
map <LEADER>q <C-w>q

"-----------------------Status line---------------------------------------
"~/Desktop/appcar/appcar.c[+] (14:33 2022/03/09)    49/55,41 -44 89% [unix][utf-8][c]
set laststatus=2
set statusline=%<%.50F%h%m%r%w
set statusline+=\ (%{strftime(\"%_H:%M\ %Y/%m/%d\",getftime(expand(\"%:p\")))})\
set statusline+=%=%l/%L,%c\ %V\ %p%%
set statusline+=\ [%{&ff}][%{&fenc}]%y

"set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%_H:%M\ %Y/%m/%d\",getftime(expand(\"%:p\")))})%=%l/%L,%c\ %V\ %p%%

"----------------------------plug setting--------------------------------

call plug#begin('~/.vim/plugged')

" Plug 'ycm-core/YouCompleteMe'
" Plug 'dense-analysis/ale'
" Plug 'neoclide/coc.nvim',{'branch':'release'}

Plug 'connorholyday/vim-snazzy'
Plug 'itchyny/vim-cursorword'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

Plug 'skywind3000/quickmenu.vim'

call plug#end()

"---------------------------plug snazzy setting---------------------------------
"hi Normal ctermfg=252 ctermbg=none          "for zsh setting
"let g:SnazzyTransparent = 1
"color snazzy
