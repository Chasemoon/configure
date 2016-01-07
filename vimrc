"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set hlsearch	"设置查找时字符串高亮
set incsearch	"设置查找时预览
set tabstop=4
set shiftwidth=4	"设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4	"设置tab键为4位，按退格键时可以一次删掉4个空格
"set cursorline		"高亮当前行
"set ruler
"set smartindent	" 开启新行时使用智能自动缩进
"set ignorecase smartcase	" 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
"set wrap	"显示时自动换行
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif	"保存上次浏览的位置


"**********************	*************	**********************
"**********************	Vundle Plugin	**********************
"**********************	*************	********************** 

""""""""""""""""""""""	General Setting	"""""""""""""""""""""" 

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

" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
Plugin 'winmanager'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

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


""""""""""""""""""""""	molokai	"""""""""""""""""""""" 
syntax enable
syntax on
set background=dark
set t_Co=256
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

""""""""""""""""""""""	NERD Tree	"""""""""""""""""""""" 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '?'
let g:NERDTreeDirArrowCollapsible = '?'

""""""""""""""""""""""	Winmanager	"""""""""""""""""""""" 
map <c-w><c-f> :FirstExplorerWindow<cr> 
map <c-w><c-b> :BottomExplorerWindow<cr> 
map <c-w><c-t> :WMToggle<cr> 
let g:AutoOpenWinManager=1
"let g:winManagerWindowLayout="Tagbar|FileExplorer,BufExplorer"
let g:winmanagerWidth=30

""""""""""""""""""""""	Taglist	"""""""""""""""""""""" 
let Tlist_Show_One_File=1
let Tlist_WinWidth=30
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1

""""""""""""""""""""""	Tagbar	"""""""""""""""""""""" 
nmap <F8> :TagbarToggle<CR>
"let g:tagbar_left = 1                                "左侧                                              
let g:tagbar_right = 1                                "右侧                                              
let g:tagbar_width = 30                               "宽度

"**********************	*************	********************** 
"**********************	Vundle Plugin	********************** 
"**********************	*************	********************** 

