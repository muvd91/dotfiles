
set nocompatible
set backspace=eol,indent,start
set number
set relativenumber
set scrolloff=10
set clipboard=unnamedplus
filetype on

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

set incsearch
set hlsearch

"" General Settings
let mapleader="\<SPACE>"
syntax enable
colorscheme peachpuff

autocmd FileType make set noexpandtab


set listchars=trail:·,tab:>·
set list
"
"" Common settings
set tabstop=4
set expandtab
set shiftwidth=4
"set smartindent
"
"set laststatus=2
"set ignorecase
"set smartcase
"
"" Search down into subfolders.
"" Provides tab-completion for all file-related tasks.
"set path+=**
"set wildmenu
"
"
"" Import utilities
"" source ~/data/dotfiles/vimrc/vanilla/functions_vimrc
"
"" Mappings
inoremap kj <Esc>
inoremap kJ <Esc>gUiwea
nnoremap <leader>e :edit **/
nnoremap <leader>cd :cd 
nnoremap <leader>n :nohlsearch<CR>
nnoremap [q :cnext<CR>
nnoremap ]q :cprevious<CR>
nnoremap [b :bnext<CR>
nnoremap ]b :bprevious<CR>
nnoremap <TAB> <C-w>w
nnoremap <leader>S :%s/
"nnoremap <leader>d :bp\|bd #<CR>
"nnoremap <leader>l :ls<CR>:b<Space>
"nnoremap <leader>su :s/
"nnoremap <leader>sh :!
"

"tnoremap <ESC> <C-W>N
"tnoremap kj <C-W>N
"
"" Search highlight
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
