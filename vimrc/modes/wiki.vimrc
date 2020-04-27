source ~/data/dotfiles/vimrc/plugins/plugg.vimrc
source ~/data/dotfiles/vimrc/plugins/default.vimrc

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

Plugg  'vimwiki/vimwiki', {'config': 'vimwiki.vimrc'}
Plugg  'tpope/vim-surround'
Plugg  'tpope/vim-unimpaired'
Plugg  'Raimondi/delimitMate', {'config': 'delimitMate.vimrc'}
Plugg  'vim-airline/vim-airline', {'config': 'vim-airline.vimrc'}
Plugg  'vim-airline/vim-airline-themes'
" Initialize plugin system
call plug#end()
doautocmd User PlugFinished

