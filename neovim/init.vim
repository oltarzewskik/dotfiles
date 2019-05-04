set nu
set numberwidth=8
colorscheme murphy
setlocal shiftwidth=4
setlocal softtabstop=4
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd BufWritePre * %s/\s\+$//e
noremap <expr> <C-m> (synIDattr(synID(line("."), col("."), 0), "name") =~ 'comment\c') ?
\ ':<S-Left>exe "<S-Right>normal! ".b:unCommentCommand<CR>' :
\ ':<S-Left>exe "<S-Right>normal! ".b:commentCommand<CR>'

autocmd BufReadPost *.go let b:commentCommand='I// '
autocmd BufReadPost *.go let b:unCommentCommand='^xxx'
autocmd BufReadPost *.py let b:commentCommand='I# '
autocmd BufReadPost *.py let b:unCommentCommand='^xx'
