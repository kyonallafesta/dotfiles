set nocompatible
filetype off

"NeoBundle20131121kyon
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#rc(expand('~/.vim/bundle/'))

"set rtp+=~/.vim/vundle.git/
"call vundle#rc()

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
" Recommended to install
NeoBundle 'Shougo/vimproc'

NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Lokaltog/powerline', {'rtp' : 'powerline/bindings/vim'}

filetype plugin indent on
NeoBundleCheck

syntax on
colorscheme desert 
set ruler
set number
set nobackup

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

set t_Co=256
set t_ut=
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'compatible'

" encoding
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" Git 
"----------------------------------------------------
nnoremap <Space>gd :<C-u>Gdiff<CR>
nnoremap <Space>gs :<C-u>Gstatus<CR><C-w>15+
nnoremap <Space>gl :<C-u>Glog<CR>
nnoremap <Space>ga :<C-u>Gwrite<CR>
nnoremap <Space>gc :<C-u>Gcommit<CR>
nnoremap <Space>gC :<C-u>Git commit --amend<CR>
nnoremap <Space>gb :<C-u>Gblame<CR>

nnoremap <silent>tc :<C-u>tabnew<CR>:tabmove<CR>
nnoremap <silent>tk :<C-u>tabclose<CR>
nnoremap <silent>tn :<C-u>tabnext<CR>
nnoremap <silent>tp :<C-u>tabprevious<CR>

nmap <silent> <C-e> :NERDTreeToggle<CR>

set clipboard=unnamed,autoselect
