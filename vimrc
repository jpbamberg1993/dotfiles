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
Plug 'lambdatoast/elm.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'alvan/vim-closetag'
Plug 'junegunn/vim-easy-align'

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

" Press F6 to toggle color column
nnoremap <silent><F6> :call <SID>ToggleColorColumn()<cr>
set colorcolumn=80
set tw=79       " width of document (used by gd)
set nowrap      " don't automatically wrap on load
set fo-=t       " don't automatically wrap text when typing
let s:color_column_old = 0
function! s:ToggleColorColumn()
    if s:color_column_old == 0
        let s:color_column_old = &colorcolumn
        windo let &colorcolumn = 0
    else
        windo let &colorcolumn=s:color_column_old
        let s:color_column_old = 0
    endif
endfunction

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

" Assign Symbol
set list lcs=trail:·,tab:»·

" Copy and Paste
set clipboard=unnamed

" Remove comments in dir
let g:netrw_banner=0

" Leader mappings
let mapleader=","

" Allow JSX in normal JS files
let g:jsx_ext_required = 0 

" Syntastic to use ESLint
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

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
