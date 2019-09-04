set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'dylanaraps/wal.vim'
Plugin 'morhetz/gruvbox'
Plugin 'w0rp/ale'
Plugin 'davidhalter/jedi-vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/async.vim'
Plugin 'vim-airline/vim-airline'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub

" git repos on your local machine (i.e. when working on your own plugin)

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Airline config
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
" Keybinds
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nnoremap <F4> :tabprevious<CR>
nnoremap <F5> :tabnext<CR>

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
let g:python_highlight_all = 1
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
set omnifunc=syntaxcomplete#Complete
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set colorcolumn=81
filetype plugin indent on       
syntax on
set t_Co=256
set shiftwidth=4
set sts=4
set background=dark
set number
set smartindent
set autoindent
set ruler
set nu
highlight Normal ctermbg=None


