" Use UTF-8
set encoding=UTF-8

set nu
set ttymouse=sgr
set mouse=a
"set relativenumber
set ttm=0
set cursorline
set hlsearch

" Disable auto comments
set paste

" Use primary (unnamedplus for clipboard)
set clipboard=unnamed

" Disable overriding clipboard
nnoremap d "_d
vnoremap d "_d
nnoremap x "_x
vnoremap x "_x

autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType go setlocal noet ci pi softtabstop=0 shiftwidth=4 tabstop=4 expandtab

" Delete spaces
autocmd BufWrite * %s/\s\+$//e

" Delete last empty newlines
autocmd BufWrite * silent!%s#\($\n\s*\)\+\%$##

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
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tomasiser/vim-code-dark'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

" Search command
command -nargs=1 Search vimgrep /<args>/ ./** | copen

" VSCODE defeault theme
colorscheme codedark
let g:airline_theme = 'codedark'

" Resize window
nnoremap <C-k> :resize +3<enter>
nnoremap <C-j> :resize -3<enter>

" Config for tabs
nnoremap ts :tabnew<enter>
nnoremap tn :tabnext<enter>
nnoremap tp :tabprev<enter>
nnoremap tf :tabfirst<enter>
nnoremap tl :tablast<enter>

" Config for nerdtree
let NERDTreeMinimalUI = 1
nnoremap NTTT :NERDTreeTabsToggle<enter>

" Config for LaTeX
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
set conceallevel=1
let g:tex_conceal='abdmg'

" Rmarkdown
autocmd FileType rmd map <F5> :update <bar> !echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
