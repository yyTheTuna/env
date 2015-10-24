execute pathogen#infect()
syntax on
filetype plugin indent on

nmap <Leader>fl :NERDTreeToggle<CR>
nmap <Leader>t :TagbarToggle<CR>
nmap <F6> :make -j4<CR>

set autoindent
set nowrap
set ruler
set shiftwidth=2
set tabstop=2
set softtabstop=2
set smarttab
set number

let NERDTreeIgnore = ['\(\.cpp\|\.cc\|\.h\|\.py\)@<!$[[file]]']

set hidden

colorscheme elflord

:set hlsearch
