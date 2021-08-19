let mapleader = " "

source ~/vim/nvim/plugs/plugs.vim
source ~/vim/nvim/plugs/coc.vim
source ~/vim/nvim/plugs/lightline_v1.vim
source ~/vim/nvim/general/general.vim
source ~/vim/nvim/general/leader.vim
source ~/vim/nvim/general/keybindings.vim
source ~/vim/nvim/languages/languages.vim
"set path+=*
highlight Normal ctermbg=NONE guibg=NONE
"wrap backspace 
set backspace=indent,eol,start
hi Comment gui=italic cterm=italic
hi htmlArg gui=italic cterm=italic
hi Keyword gui=italic cterm=italic

"autocmd ColorScheme * highlight jsClassKeyword cterm=italic
"⚠ WARNING : SOMETIMES AFFECTS VISUAL MODE
" " WSL yank support
 " let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
 " if executable(s:clip)
 " augroup WSLYank
   " autocmd!
   " autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
 " augroup END
 " endif
" " set timeoutlen=5
" " set ttimeoutlen=50
"

