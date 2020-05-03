
" General settings
colorscheme peachpuff
set nocompatible
set backspace=eol,indent,start
set number
set relativenumber
set scrolloff=10
set clipboard=unnamedplus
syntax enable
filetype on
set colorcolumn=110
set laststatus=2
" Search settings
set incsearch
set hlsearch
set ignorecase
set smartcase
" Tab config
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent

set listchars=trail:·,tab:>·
set list

set wildmenu

highlight ColorColumn ctermbg=10
highlight Search ctermfg=255 ctermbg=8
highlight IncSearch ctermfg=255 ctermbg=8 cterm=bold
highlight StatusLine ctermbg=255 ctermfg=10
highlight Visual ctermfg=10 ctermbg=255

" C Filetype configuration
autocmd FileType make set noexpandtab
autocmd FileType c set errorformat=%f:%l:%c:%m,%-G%.%#
autocmd FileType c set path+=**

"" Mappings
let mapleader="\<SPACE>"
inoremap kj <Esc>
inoremap kJ <Esc>gUiwea
nnoremap <leader>e :edit **/
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
"

"tnoremap <ESC> <C-W>N
"tnoremap kj <C-W>N
"
"
"" Autocomplete settings - Supertab is present
"inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
"
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*/target/*
"
"" Remove Esc delay
"set timeoutlen=1000 ttimeoutlen=0
"
"set completeopt=longest,menuone
"
"" If compiled with clipboard or using gVim
"
"" Apparently syntax highlighting will stop working if it exceeds 'redraw' time
"" setting. This forces to highlight from the beginning when a buffer is
"" entered.
"autocmd BufEnter * :syntax sync fromstart
