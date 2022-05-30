" ==================================================
" Plugins
" ==================================================
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Excellent git wrapper
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

Plug 'preservim/nerdcommenter'

"File system tree"
Plug 'scrooloose/nerdtree'

" nerdtree-git-plugin - show git status in NERD Tree
" https://github.com/Xuyuanp/nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

" vim-airline
" Enhanced statusline
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
" https://github.com/vim-airline/vim-airline-themes
Plug 'vim-airline/vim-airline-themes'
" https://github.com/danilo-augusto/vim-afterglow
Plug 'danilo-augusto/vim-afterglow' 


" Language support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()


" ==================================================
" Remaps
" ==================================================
"toggle nerdmap with spacebar"
nnoremap <silent> <Space> :NERDTreeToggle<CR>

" use ;; for escape
" http://vim.wikia.com/wiki/Avoid_the_escape_key
inoremap ;; <Esc>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:NERDCreateDefaultMappings = 0
nnoremap <leader>c :call nerdcommenter#Comment(0, "toggle") <CR>
vnoremap <leader>c :call nerdcommenter#Comment(0, "toggle") <CR> gv

" ==================================================
" Options
" ==================================================

set scrolloff=8
set number
set relativenumber

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set nohlsearch
set hidden
set noerrorbells

set incsearch
set colorcolumn=120
set cmdheight=2
set termguicolors
set signcolumn=yes

let NERDTreeShowHidden=1
" ====================================
" Colors
" configure: https://github.com/vim-airline/vim-airline#user-content-extensible-pipeline
" ====================================

colorscheme afterglow 
let g:airline_theme = "afterglow"

" show buffers (if only one tab)
let g:airline#extensions#tabline#enabled = 1

