"General Settings
set mouse=a
" Statusline --- {{{
set statusline=2
set laststatus=2
set belloff=all
" }}}

" CLIPBOARD ----- {{{
"vim clipboard and system clipboard same now
set clipboard=unnamedplus
" }}}

" EDITOR ----- {{{
syntax on
filetype plugin indent on
set ignorecase
set smartcase
" use 4 spaces for tabs
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set scrolloff=8
set number relativenumber
" }}}

" SEARCHING ----- {{{
set incsearch
set nohlsearch
" clear last used search pattern:http://vimdoc.sourceforge.net/htmldoc/pattern.html#last-pattern
let @/="" 
" }}}

" FOLDING ----- {{{
" use pattern {{{ #code# }}} to detect fold region
" use zm to fold all markers and zr to release all folds with markers
set foldmethod=marker
" }}}

" BUFFERS ----- {{{
" remember foldings : moved to general/augroups.vim

" }}}

" SPLITS ----- {{{
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"}}}

" wildmenu ----- {{{
" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*
" }}}

" coc needs it----- {{{
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" }}}


