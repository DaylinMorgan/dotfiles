" Custom Mappings
imap jj <Esc> 

"---------------
" Tabs
"---------------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Display line numbers on the left
set number



"---------------
" Plugins
"---------------
call plug#begin()
    Plug 'preservim/NERDTree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0