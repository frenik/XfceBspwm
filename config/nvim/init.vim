call plug#begin('~/.vim/plugged') 
"Themes
    Plug 'morhetz/gruvbox'
    "Plug 'jacoborus/tender.vim'
    "Plug 'NLKNguyen/papercolor-theme'
    "Plug 'jaredgorski/spacecamp'
"Archives
    Plug 'preservim/nerdtree'
"Airline
    Plug 'vim-airline/vim-airline'
"Icons
    Plug 'ryanoasis/vim-devicons'
"Auto-Complete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" VIM-Configs
syntax on
set mouse=a
set number relativenumber
set title
set cursorline cursorcolumn

set smartindent
set smarttab
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

set background=dark
set termguicolors
colorscheme gruvbox 

" Plugins-Configs

" NerdTree ####################
set encoding=UTF-8

let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = []
let NERDTreeStatusline = ''
 
nnoremap <C-n> :NERDTreeToggle<CR>
" ####################

" AirLine ####################
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_theme='gruvbox'
" ####################

" Coc.nvim ####################
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" ####################


