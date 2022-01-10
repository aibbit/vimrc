set ai                          " set auto-indenting on for programming
set showmatch                   " automatically show matching brackets
set cursorline
set ruler                       " show the cursor position all the time
set nocompatible                " vi compatible is LAME
set showmode
syntax on                       " turn syntax highlighting on by default
set number
set showcmd
set wildmenu

set scrolloff = 5
set clipboard = unnamed           
set laststatus = 2
set backspace = indent,eol,start  
set mouse = a
set encoding = utf-8
set t_Co = 256

"缩进
set tabstop = 4
set shiftwidth = 4
set expandtab
set smarttab
set smartindent
" set list
" set listchars=tab:>-,trail:-

"search setting
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

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


" Show EOL type and last modified timestamp, right after the filename
set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%_H:%M\ %Y/%m/%d\",getftime(expand(\"%:p\")))})%=%l/%L,%c\ %V\ %p%%

"-----------------------------------------------------------------------
"plug setting
call plug#begin('~/.vim/plugged')

" Plug 'ycm-core/YouCompleteMe' 
" Plug 'dense-analysis/ale'
"Plug 'neoclide/coc.nvim',{'branch':'release'}

"Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'itchyny/vim-cursorword'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

Plug 'skywind3000/quickmenu.vim'

call plug#end()

"---------------------------snazzy setting---------------------------------
"hi Normal ctermfg=252 ctermbg=none          "for zsh setting
"let g:SnazzyTransparent = 1
"color snazzy

" ---------------------------airline setting---------------------------------
" let g:airline_section_error = []
" let g:airline_section_warning = []
" let g:airline_section_c = '%F%h%m%r'
" let g:airline_section_z = '%l/%L,%c %V %p%%'



