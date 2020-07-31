
source ~/data/dotfiles/vimrc/plugins/default.vimrc
source ~/data/dotfiles/vimrc/plugins/plugg.vimrc

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

" Download and install automatically
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plugg  'rakr/vim-one', {'config': 'colorschemes/vim-one.vimrc'}

Plugg  'airblade/vim-gitgutter'
Plugg  'tpope/vim-fugitive'
Plugg  'tpope/vim-sleuth'
Plugg  'tpope/vim-surround'
Plugg  'tpope/vim-unimpaired'
Plugg  'tpope/vim-commentary'
Plugg  'tpope/vim-markdown'
Plugg  'tpope/vim-repeat'
Plugg  'Raimondi/delimitMate', {'config': 'delimitMate.vimrc'}
Plugg  'majutsushi/tagbar', {'config': 'tagbar.vimrc'}
Plugg  'scrooloose/nerdtree', {'config': 'nerdtree.vimrc'}
Plugg  'ctrlpvim/ctrlp.vim', {'config': 'ctrlp.vimrc'}
Plugg  'vim-airline/vim-airline', {'config': 'vim-airline.vimrc'}
Plugg  'vim-airline/vim-airline-themes'
Plugg  'takac/vim-hardtime', {'config': 'vim-hardtime.vimrc'}
Plugg  'SirVer/ultisnips', {'config': 'ultisnips.vimrc'}
Plugg  'honza/vim-snippets'
Plugg  'vim-syntastic/syntastic', {'config': 'syntastic.vimrc'}
Plugg  'udalov/kotlin-vim'
Plugg  'ycm-core/YouCompleteMe', {'config': 'YouCompleteMe.vimrc'}

" Initialize plugin system
call plug#end()
doautocmd User PlugFinished

nnoremap <C-\> :call KtExecTerm()<CR>
function KtExecTerm()
  write
  let l:src = expand('%:p')
  if exists("s:termbuf")
    execute "bdelete" s:termbuf
  endif
  below let s:termbuf = term_start("kotlin " . l:src)
endfunction

let g:syntastic_kotlin_checkers = ['kotlinc']
