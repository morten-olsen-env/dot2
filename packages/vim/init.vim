:let packagedir = $VIM_PLUGIN_PATH

" let &runtimepath.=','.string(packagedir)
let &runtimepath.=','.escape(expand('<sfile>:p:h'), '\,')
let g:loaded_python_provide=1
let g:python_host_prog = '/usr/local/bin/python'

syntax on
filetype plugin indent on

call plug#begin(packagedir)

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Valloric/YouCompleteMe', {'do' : './install.py'}
Plug 'jpo/vim-railscasts-theme'
Plug 'vim-scripts/FuzzyFinder'
Plug 'vim-scripts/L9'
Plug 'junegunn/goyo.vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'tomasr/molokai'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'mxw/vim-jsx'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:jsx_ext_required = 0
autocmd FileType octave setlocal keywordprg=xterm\ -fa\ 'DejaVu\ Sans\ Mono:style=Book'\ -fs\ 12\ -geometry\ 80x50\ -e\ info\ octave\ --vi-keys\ --index-search

set pastetoggle=<F2>
set background=dark
colorscheme railscasts
" colorscheme molokai
:set number
:set tabstop=2
:set shiftwidth=2
:set expandtab
:set hlsearch
set nobackup
set noswapfile
" set wildignore=*.swp,*.bak,*.pyc,*.class
:set hlsearch 
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
set t_Co=256
set backspace=2 " make backspace work like most other apps
let g:solarized_termcolors=256
let mapleader = ","
let g:airline#extensions#tabline#enabled = 1


"if &term =~ '^screen'
    " tmux knows the extended mouse mode
    "set ttymouse=xterm2
"endif
function! ToggleMouse()
    " check if mouse is enabled
    if &mouse == 'a'
        " disable mouse
        set mouse=
    else
        " enable mouse everywhere
        set mouse=a
    endif
endfunc
set mouse=a

" Key bindings
:nmap <Leader>m :call ToggleMouse()<CR>
:nmap <Leader>n :NERDTreeToggle<CR>
:nmap <Leader>df :Goyo<CR>
:nmap <Leader>b :FufBuffer<CR>
:nmap <C-n> :tabnew<CR>
:nmap <Leader>l :tabnext<CR>
nnoremap <leader>d "_d

" change editor line instead of actual line
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" remove search highlights"
nmap <silent> ,/ :nohlsearch<CR>

" edit file as sudo
cmap w!! w !sudo tee % >/dev/null

" learner mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
