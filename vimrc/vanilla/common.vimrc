" 

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

" C Filetype configuration
autocmd FileType make set noexpandtab
autocmd FileType c set errorformat=%f:%l:%c:%m,%-G%.%#
autocmd FileType c set path+=**
autocmd Filetype c set colorcolumn=100

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
nnoremap <C-n> :Explore<CR>

" Terminal mappings
tnoremap <ESC> <C-W>N
tnoremap kj <C-W>N
function Terminal()
    :below terminal ++rows=20
endfunction

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "<C-k>"
inoremap <C-j> <C-n>


" Colorscheme settings
let g:gruvbox_italic=1

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

if $BACKGROUND == 'light' || has("gui_running")
  set background=light
elseif $BACKGROUND == 'dark'
  set background=dark
endif

runtime plugged/gruvbox/colors/gruvbox.vim

" End colorscheme settings

"
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*/target/*
"
"" Remove Esc delay
"set timeoutlen=1000 ttimeoutlen=0
"
"set completeopt=longest,menuone
"
