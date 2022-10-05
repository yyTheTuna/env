"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tpope/vim-commentary'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Wombat'

set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set ruler
set number
set hidden
set hlsearch
set nobackup
set noswapfile
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
syntax on

nmap <Leader>t :NERDTreeToggle<CR>

autocmd FileType xml,html setlocal commentstring=<!--%s-->
autocmd FileType c,cpp,cs,java,kotlin setlocal commentstring=/\*\ %s\ \*/
autocmd FileType sh,python,text,yml setlocal commentstring=#%s

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

colorscheme wombat
