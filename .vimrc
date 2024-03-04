set number
"set relativenumber
set tabstop=4
"set shiftwidth=4
set autoindent
set mouse=a
set nocompatible
"set wrap
set encoding=utf-8
"set termguicolors
"colorscheme gruvbox

call plug#begin('~/.vim/autoload')

Plug 'https://github.com/neoclide/coc-pairs.git'
Plug 'https://github.com/alvan/vim-closetag.git'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight.git'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/airblade/vim-gitgutter.git'

call plug#end()

nnoremap <C-n> :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
