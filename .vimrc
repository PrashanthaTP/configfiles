set virtualedit+=onemore
filetype on
" Cursor in terminal
" https//vim.fandom.com/wiki/Configuring_the_cursor
" 1 or 0 -> blinking block
" 2 solid block
" 3 -> blinking underscore
" 4 solid underscore
" Recent versions of xterm (282 or above) also support
" 5 -> blinking vertical bar
" 6 -> solid vertical bar
if &term =~ '^xterm'
" normal mode
let &t_EI .= "\<Esc>[2 q"
" insert mode
let &t_SI .= "\<Esc>[6 q"
endif
" noremap <expr> k ((line('.')==1)?'':'k')
" noremap <expr> j ((line('.')==line('$'))?'':'j')
autocmd VimEnter * silent! echo -ne "\e[2 q"
autocmd VimLeave * silent! echo -ne "\e[6 q"
source ~/vim/nvim/init.vim
hi Comment gui=italic cterm=italic
hi htmlArg gui=italic cterm=italic
hi Keyword gui=italic cterm=italic
autocmd ColorScheme * highlight jsClassKeyword cterm=italic
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
