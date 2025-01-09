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
" Plugg  'rakr/vim-one', {'config': 'colorschemes/vim-one.vimrc'}
Plugg  'morhetz/gruvbox', {'config': 'colorschemes/gruvbox.vimrc'}

" Conqueror of Completion
Plugg 'neoclide/coc.nvim', {'branch': 'release', 'config': 'coc.vimrc'}

Plugg  'airblade/vim-gitgutter'
Plugg  'tpope/vim-fugitive'
Plugg  'tpope/vim-sleuth'
Plugg  'tpope/vim-surround'
Plugg  'tpope/vim-unimpaired'
Plugg  'tpope/vim-commentary'
Plugg  'tpope/vim-markdown'
Plugg  'tpope/vim-repeat'
Plugg  'tpope/vim-fireplace'
Plugg  'tpope/vim-sexp-mappings-for-regular-people'
Plugg  'guns/vim-sexp'

Plugg  'Raimondi/delimitMate', {'config': 'delimitMate.vimrc'}
Plugg  'scrooloose/nerdtree', {'config': 'nerdtree.vimrc'}
Plugg  'ctrlpvim/ctrlp.vim', {'config': 'ctrlp.vimrc'}
Plugg  'vim-airline/vim-airline', {'config': 'vim-airline.vimrc'}
Plugg  'vim-airline/vim-airline-themes'
Plugg  'SirVer/ultisnips', {'config': 'ultisnips.vimrc'}
Plugg  'honza/vim-snippets'

" Initialize plugin system
call plug#end()
doautocmd User PlugFinished

source ~/data/dotfiles/vimrc/plugins/file-exec.vimrc

