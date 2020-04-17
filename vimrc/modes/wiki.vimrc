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

Plug        'jiangmiao/auto-pairs'
Plug        'tpope/vim-surround'
Plug        'tpope/vim-unimpaired'
PlugModule  'vimwiki'
PlugModule  'vim-airline'

PlugModule  'colorschemes/vim-one'
" Initialize plugin system
call plug#end()

exec "colorscheme " . g:colors_name
