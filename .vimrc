"enable moving to last letter in normal mode
set virtualedit+=onemore

source ~/vim/nvim/init.vim
" cursor ----- {{{
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
let &t_EI .= "\<Esc>[1 q"
" insert mode
let &t_SI .= "\<Esc>[6 q"
endif
autocmd VimEnter * silent! echo -ne "\e[1 q"
autocmd VimLeave * silent! echo -ne "\e[6 q"
" }}}

" noremap <expr> k ((line('.')==1)?'':'k')
" noremap <expr> j ((line('.')==line('$'))?'':'j')


