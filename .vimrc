:inoremap kj <ESC>
:nnoremap = <c-w><Right>
:nnoremap - <c-w><Left>
set tabstop=4
set shiftwidth=4
set nu
set modeline
set expandtab
set softtabstop=4
set ignorecase
map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>
map <C-H> <C-W>h<C-W>
map <C-L> <C-W>l<C-W>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

set nocompatible              " be ViMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'easymotion/vim-easymotion'
Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'psf/black'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" NerdTree
:let g:NERDTreeWinSize=60
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" Syntastic
let g:syntastic_python_checkers = ['python']
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_cpp_checkers = ['g++']
let g:syntastic_check_on_w = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Easy Motion
map <Leader> <Plug>(easymotion-prefix)
colorscheme gruvbox
set background=dark

" Black Formatter
augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end
