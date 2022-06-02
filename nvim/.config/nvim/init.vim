set wildignore+=**/node_modules/*
set wildignore+=**/.git/*

" ==================================================
" Plugins
" ==================================================
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Telesecope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" Git wrapper
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'
"File system tree"
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'preservim/nerdcommenter'
" Enhanced statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }

" Language support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

set termguicolors
" ==================================================
" Remaps
" ==================================================
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

" Telescope fuzzy finder
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>l :wincmd l<CR>

nnoremap <leader>o :2winc l \| vsplit \| 2winc h \| norm o<CR>

nnoremap ; :

" ==================================================
" Options
" ==================================================

set scrolloff=8
set number
set relativenumber

set tabstop=2 softtabstop=2
set shiftwidth=2
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

" Nvim tree 
nnoremap <space> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

" ====================================
" Colors
" configure: https://github.com/vim-airline/vim-airline#user-content-extensible-pipeline
" ====================================

colorscheme dracula
let g:airline_theme = "dracula"
"hi Normal guibg=NONE ctermbg=NONE
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

lua require("init")
