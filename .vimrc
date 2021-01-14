syntax on

set expandtab
set incsearch 
set nobackup
set noswapfile
set nowrap
set shiftwidth=4
set smartcase
set smartindent
set tabstop=4 softtabstop=4
set undodir=~/.vim/undodir
set undofile

set encoding=utf-8
set fileencoding=utf-8
set nu
set path+=**
set relativenumber
set timeoutlen=1000
set ttimeoutlen=50
set wildmenu

command! MakeTags !ctags -R .

" Browsing
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=25
let g:netrw_liststyle=3


nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

map <C-n> :NERDTreeToggle<CR>   

" change with of coursor
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" install Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-sort-motion'
Plug 'michaeljsmith/vim-indent-object'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'

call plug#end()
