if (has("termguicolors"))
  set termguicolors
endif

set backspace=eol,indent,start
set nocompatible

" General Settings
let mapleader="\<SPACE>"
set listchars=trail:·,tab:>·
set list

" Common settings
set tabstop=2
set expandtab
set shiftwidth=2
set smartindent

set number
set relativenumber
set scrolloff=10      " keep 10 lines visible above and below cursor at all times
set sidescrolloff=30  " keep 30 columns visible left and right of the cursor at all times
set nohlsearch
set laststatus=2
set ignorecase
set smartcase

set updatetime=1000

" Import utilities
source ~/data/dotfiles/vimrc/vanilla/functions.vimrc

" Mappings
inoremap kj <Esc>
inoremap kJ <Esc>gUiwea
nnoremap <leader>w :write<CR>
nnoremap <leader>e :edit **/
nnoremap <leader>cd :cd 
nnoremap <leader>d :bp\|bd #<CR>
nnoremap <TAB> <C-w>w
nnoremap <S-TAB> <C-w>W
nnoremap <leader>b :ls<CR>:b<Space>
nnoremap <leader>S :%s/
nnoremap <leader>su :s/
nnoremap <leader>sh :!
nnoremap <leader>n :nohlsearch<CR>
" Horizontal scrolling
nnoremap <C-l> 5zl
nnoremap <C-h> 5zh
" Vertical scrolling
nnoremap <C-y> 2<C-y>
nnoremap <C-e> 2<C-e>

tnoremap <ESC> <C-W>N
tnoremap kj <C-W>N

" menu navigation with <C-j> <C-k>
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "<C-k>"

" Search highlight
set incsearch
set hlsearch

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*/target/*

" Remove Esc delay
set timeoutlen=1000 ttimeoutlen=0

set completeopt=longest,menuone

" If compiled with clipboard or using gVim
set clipboard=unnamedplus

" Apparently syntax highlighting will stop working if it exceeds 'redraw' time
" setting. This forces to highlight from the beginning when a buffer is
" entered.
autocmd BufEnter * :syntax sync fromstart

" The Silver Searcher for grep
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif
