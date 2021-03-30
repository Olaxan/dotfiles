set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"

Plugin 'tpope/vim-fugitive'

Plugin 'ycm-core/YouCompleteMe'

"Plugin 'dense-analysis/ale'

"Plugin 'neoclide/coc.nvim'

"Plugin 'OmniSharp/omnisharp-vim'

Plugin 'tikhomirov/vim-glsl'

Plugin 'lervag/vimtex'

Plugin 'gcmt/taboo.vim'


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

let mapleader=","

syntax on
set number
set mouse=a
set tabstop=4
set shiftwidth=4
set autoindent
set cindent
set laststatus=2
set autochdir

set sessionoptions+=tabpages,globals
set statusline+=%{FugitiveStatusline()}

set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

map <C-t><up> 	 :tabr<cr>
map <C-t><down>  :tabl<cr>
map <C-t><left>  :tabp<cr>
map <C-t><right> :tabn<cr>

nnoremap <Leader>b :buffers<CR>:buffer<Space>

let g:ycm_autoclose_preview_window_after_insertion = 1

let g:ycm_semantic_triggers =  { 'cpp,objcpp' : ['->', '.', '::', 're!gl'] }
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

let g:tex_flavor = 'latex'

if empty(v:servername) && exists('*remote_startserver')
	call remote_startserver('VIM')
endif

let g:airline_powerline_fonts = 1

let g:ale_completion_enabled = 1
let g:ale_linters = {'cs': ['OmniSharp']}
