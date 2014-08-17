"" VUNDLE CONFIG
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
"" alternatively, pass a path where Vundle should install plugins " call vundle#begin('~/some/path/here')
"" let Vundle manage Vundle, required

"Plugin 'Valloric/YouCompleteMe'
Plugin 'gmarik/Vundle.vim'

Plugin 'chase/vim-ansible-yaml'
Plugin 'elzr/vim-json'

Plugin 'pangloss/vim-javascript' 
Plugin 'kchmck/vim-coffee-script'

Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/taglist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'bling/vim-airline'

Plugin 'scrooloose/syntastic'

Plugin 'nanotech/jellybeans.vim'
"Plugin 'altercation/vim-colors-solarized'

"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"" To ignore plugin indent changes, instead use:
""filetype plugin on
""
"" Brief help
"" :PluginList          - list configured plugins
"" :PluginInstall(!)    - install (update) plugins
"" :PluginSearch(!) foo - search (or refresh cache first) for foo
"" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
""
"" see :h vundle for more details or wiki for FAQ
"" Put your non-Plugin stuff after this lineset nocompatible


" "Something about the indent
set autoindent
set shiftwidth=4
set tabstop=4

set number
set ruler
set showcmd
set cmdheight=2
set history=50
set ignorecase
set hlsearch

set scrolloff=10

""map <C-S>
nnoremap <silent> <C-S> :update<CR>
inoremap <silent> <C-S> <c-o>:update<CR>


""Something with the .vimrc
let mapleader = ","
map <silent> <Leader>ss :source ~/.vimrc<cr>
map <silent> <Leader>ee :e ~/.vimrc<cr>
map <silent> <Leader>w :w!<cr>
autocmd! bufwritepost ~/.vimrc source ~/.vimrc

"" javascript CONFIG
autocmd BufNewFile,BufReadPost *.js setl shiftwidth=4 tabstop=4 expandtab


"" kchmck/vim-coffee-script. CONFIG
set nocompatible
filetype off
syntax enable
filetype plugin indent on 
let coffee_compiler = '/usr/local/bin/coffee'
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 tabstop=2 expandtab 
hi link coffeeSpaceError NONE

"" Hightlight current line
set cursorline

"" Relative linenumber
function! NumberToggle()
	if(&relativenumber == 1)
		set norelativenumber
		set number
	else
		set relativenumber
	endif
endfunc

nnoremap <F2> :call NumberToggle()<CR>
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber

"" Taglist
"" let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_WinWidth=40
set updatetime=1000
noremap <silent> <F3> :TlistToggle<CR>

"" NerdTree
"" autocmd StdinReadPre * let s:std_in=1
"" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"" NerdTree-tabs
noremap <F4> :NERDTreeTabsToggle<CR>
"" Todo: I don't know what's the use of NERDTreeTabsToggle.

"" NerdComment
map <C-_> <Leader>cij

"" Tabs (BECAUSE the terminal make no difference between Tab and C-Tab) 
"noremap <Tab> gt
"noremap <S-Tab> gT

"" Air-line CONFIG
set laststatus=2
" airline-branche
let g:airline#extensions#branch#enabled = 1
" airline-tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
" buffer CONFIG

nnoremap <Leader>T :enew<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Leader>bq :bp<BAR>bd#<CR>


"" syntastic Config
"let g:syntastic_always_populate_loc_list = 1

"" JERRYBEANS
colorscheme jellybeans

""DelimitMate
let delimitMate_expand_cr = 1
