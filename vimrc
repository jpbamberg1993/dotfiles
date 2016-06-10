" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-haml'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'dahu/vim-fanfingtastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'elzr/vim-json'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-surround'
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'

call plug#end()

" Backups
set writebackup
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

" Whitespace
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set autoindent
set expandtab
set nowrap
set backspace=2

" Little hack to fix the split/scroll problem 
tabnew
bwipeout

" Set Split Direction
set splitbelow
set splitright

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Sequence timeout
set timeout timeoutlen=3000 ttimeoutlen=100

" Style Guide
highlight OverLength ctermbg=gray ctermfg=white guibg=#d3d3d3
match OverLength /\%>80v.\+/

" Assign Symbol
set list lcs=trail:·,tab:»·

" Remove comments in dir
let g:netrw_banner=0

" Leader mappings
let mapleader=","

" Reload vim config
nnoremap <Leader>r :source ~/.vimrc<CR>

" Toggle search result highlighting
nnoremap <Leader>h :set hlsearch!<CR>

" Toggle line wrapping
nnoremap <Leader>w :set wrap!<CR>

" Toggle line numbers
nnoremap <Leader># :set number!<CR>

" Toggle paste mode
nnoremap <Leader>p :set paste!<CR>

" Toggle current nav
nnoremap <Leader>e :Explore<CR>
