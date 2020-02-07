set nu
set numberwidth=5
set ttm=0
colorscheme ron
set cursorline

" Disable auto comments
set paste

autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType go setlocal noet ci pi softtabstop=0 shiftwidth=4 tabstop=4 expandtab

" Delete spaces
autocmd BufWrite * %s/\s\+$//e

" Don't move cursor if exiting instert mode
let CursorColumnI = 0 "the cursor column position in INSERT
autocmd InsertEnter * let CursorColumnI = col('.')
autocmd CursorMovedI * let CursorColumnI = col('.')
autocmd InsertLeave * if col('.') != CursorColumnI | call cursor(0, col('.')+1) | endif

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdtree' " :NERDTree to start
Plug 'jistr/vim-nerdtree-tabs' " :NERDTreeTabsToggle to start
Plug 'jlanzarotta/bufexplorer' " type \be
Plug 'mileszs/ack.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" Map utilities using clipboard
map <C-y> "+y
map <C-d> "+d
nnoremap <C-p> "+p

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
