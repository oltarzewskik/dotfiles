set nu
set numberwidth=10
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

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'lervag/vimtex'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'
call plug#end()

" Config for LaTeX
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
set conceallevel=1
let g:tex_conceal='abdmg'

" Rmarkdown
autocmd FileType rmd map <F5> :update <bar> !echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
