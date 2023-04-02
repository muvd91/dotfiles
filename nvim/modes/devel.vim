source ~/data/dotfiles/nvim/configs/base.vim
source ~/data/dotfiles/nvim/configs/plugg.vim

call plug#begin()

" Colorscheme
Plug  'EdenEast/nightfox.nvim'

" Conqueror of Completion
Plugg 'neoclide/coc.nvim', {'branch': 'release', 'config': 'coc.vim'}

" Tim Pope suite
Plug  'tpope/vim-fugitive'
Plug  'tpope/vim-sleuth'
Plug  'tpope/vim-surround'
Plug  'tpope/vim-unimpaired'
Plug  'tpope/vim-commentary'
Plug  'tpope/vim-repeat'

" Snippets
Plugg 'SirVer/ultisnips', {'config': "ultisnips.vim"}
Plug  'honza/vim-snippets'

" Miscelaneous
Plugg 'nvim-tree/nvim-tree.lua', {'config': 'nvim-tree.lua'}
Plugg 'ctrlpvim/ctrlp.vim', {'config': 'ctrlp.vim'}
Plugg  'akinsho/bufferline.nvim', { 'tag': 'v3.*', 'config': 'bufferline.lua'}
Plug  'nvim-tree/nvim-web-devicons'

" Initialize plugin system
call plug#end()
doautocmd User PlugFinished

colorscheme nightfox


