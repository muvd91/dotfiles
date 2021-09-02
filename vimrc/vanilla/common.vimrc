
" General settings
colorscheme koehler
set nocompatible
set backspace=eol,indent,start
set number
set relativenumber
set scrolloff=10
set clipboard=unnamedplus
syntax enable
filetype on
set textwidth=100
set laststatus=2
set ruler
" Search settings
set incsearch
set hlsearch
set ignorecase
set smartcase
" Tab config
set tabstop=2
set expandtab
set shiftwidth=2
set smartindent

set listchars=trail:·,tab:>·
set list

set wildmenu

highlight Pmenu ctermfg=255 ctermbg=94
highlight PmenuSel cterm=bold ctermbg=255 ctermfg=0
highlight Search cterm=bold ctermfg=255 ctermbg=94
highlight IncSearch cterm=bold ctermfg=255 ctermbg=94
highlight StatusLine ctermfg=255 ctermbg=53
highlight Visual cterm=none ctermfg=255 ctermbg=22
highlight MatchParen cterm=none ctermbg=13 ctermfg=255

" C Filetype configuration
autocmd FileType make set noexpandtab
autocmd FileType c set errorformat=%f:%l:%c:%m,%-G%.%#
autocmd FileType c set path+=**
autocmd Filetype c set colorcolumn=100
autocmd Filetype c highlight ColorColumn ctermbg=22

" Mappings
let mapleader="\<SPACE>"
inoremap kj <Esc>
inoremap kJ <Esc>gUiwea
nnoremap <leader>w :write<CR>
nnoremap <leader>cd :cd 
nnoremap <leader>n :nohlsearch<CR>
nnoremap ]q :cnext<CR>
nnoremap [q :cprevious<CR>
nnoremap [b :bnext<CR>
nnoremap ]b :bprevious<CR>
nnoremap <TAB> <C-w>w
nnoremap <leader>S :%s/
nnoremap <leader>d :bp\|bd #<CR>
nnoremap <leader>l :ls<CR>:b<Space>
nnoremap <leader>su :s/
nnoremap <C-p> :edit **/

" Terminal mappings
tnoremap <ESC> <C-W>N
tnoremap kj <C-W>N

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "<C-k>"
inoremap <C-j> <C-n>
"
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*/target/*
"
"" Remove Esc delay
"set timeoutlen=1000 ttimeoutlen=0
"
"set completeopt=longest,menuone
"
