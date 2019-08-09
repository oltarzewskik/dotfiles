set nu
set numberwidth=7
colorscheme murphy
setlocal shiftwidth=4
setlocal softtabstop=4
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd BufWritePre * %s/\s\+$//e

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'scrooloose/nerdtree'  " :NERDTree to start
Plug 'jistr/vim-nerdtree-tabs'  " :NERDTreeTabsToggle to start
Plug 'jlanzarotta/bufexplorer' " type \be
Plug 'mileszs/ack.vim'
call plug#end()

" Config for tabs
nnoremap ts :tabnew<enter>
nnoremap tn :tabnext<enter>
nnoremap tp :tabprev<enter>
nnoremap tf :tabfirst<enter>
nnoremap tl :tablast<enter>

" Config for nerdtree-tabs
nnoremap NTTT :NERDTreeTabsToggle<enter>

" Config for LaTeX
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
set conceallevel=1
let g:tex_conceal='abdmg'

" Rmarkdown
autocmd FileType rmd map <F5> :update <bar> !echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

