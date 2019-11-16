
set nocompatible              " 去除VI一致性,必须"
filetype off                  " 必须"

" 必须 加载vim自带和插件相应的语法和文件类型相关脚本"
filetype plugin indent on
" 忽视插件改变缩进,可以使用以下替代:"
filetype plugin on

"
" 基本配置
"

" 设置文件编码"
set encoding=utf-8
set fenc=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb2312,gb18030,big5

" 设置默认字体"
" set guifont=ProFont_for_Powerline:h13
" set guifont=Monaco:h13

" 总是显示状态栏"
set laststatus=2
" 自定义状态栏 airline"
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1

"打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
"我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"设置切换Buffer快捷键"
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

" 关闭状态显示空白符号计数,这个对我用处不大"
" let g:airline#extensions#whitespace#enabled = 0
" let g:airline#extensions#whitespace#symbol = '!'

" 映射<leader>num到num buffer"
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>
map <leader>0 :b 10<CR>

" 显示光标当前位置"
set ruler
" 开启行号显示number"
set nu
" 开启相对行号 relativenumber"
set rnu
" 高亮显示当前行cursorline"
set cul
" 高亮显示当前列cursorcolumn"
set cuc
" 允许所有模式下使用鼠标"
set mouse=a
" 显示当前模式"
set showmode
" 显示当前命令"
set showcmd

" 配色"
colorscheme solarized
set background=dark

"记录命令历史的行数"
set history=1000

"
" 搜索设置
"
"
" 自动转义"
set magic
" 设置匹配模式"
set showmatch
" 设置大写搜索必须匹配大写"
set smartcase
" 小写搜索可以找到大写"
set ignorecase
" 高亮显示搜索结果"
set hlsearch
" 边输入边搜索"
set incsearch
" 不重新搜索"
set nowrapscan

"
" 代码设置
"

" 设置语法高亮"
syntax enable
" Vim用缺省值覆盖自己的"
syntax on

" 设置代码折叠"
" 基于缩进或语法进行代码折叠"
"set foldmethod=indent
set foldmethod=syntax
" 设置执行最深的嵌套数"
set foldnestmax=1
" 启动 vim 时关闭折叠代码"
set nofoldenable
" 禁止折行"
set nowrap
" 去掉输入错误的提示音"
"set noeb  "noerrorbells 不好用"
set vb "visualbell 可用"
"set vb t_vb "可用"
" Vim自身命令行模式智能补全"
set wildmenu
set wildmode=full
" 在处理未保存或只读文件的时候，弹出确认"
set confirm
" 覆盖文件时不备份"
set nobackup
" 文件保存后取消备份"
set nowritebackup
" 取消交换区"
set noswapfile
" 键入时隐藏鼠标"
set mousehide
" 让退格键和delete键都支持删除回车符"
set backspace=indent,eol,start
" 设置光标之下的最少行数"
set scrolloff=3
" 设置光标移动到屏幕之外时，自动向右滚动10个字符"
set sidescroll=10



"
" 缩进设置
"

" 自动缩进"
set autoindent
" 按照C语言的语法，自动的调整缩进的长度"
set cindent
" 智能缩进"
set smartindent
" 自适应不同语言的智能缩进"
filetype indent on
" 将制表符扩展为空格"
set expandtab
" 与shiftwidth配合"
set smarttab
" 设置编辑时制表符占用空格数"
set tabstop=4
" 设置格式化时制表符占用空格数"
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符"
set softtabstop=4
" 显示缩进tab线"
" set list lcs=tab:\--
set list listchars=eol:¬,tab:▸\ ,trail:.,


" 快捷键设置"
" 快捷键前缀"
let mapleader = ','
" 定义快捷键到行首和行尾"
nmap <Leader>a 0
nmap <Leader>e $
" 复制至系统剪贴板"
vnoremap <Leader>y "+y"
" 从系统剪贴板粘贴
nmap <Leader>p "+p"
" 定义快捷键在结对符之间跳转"
nmap <Leader>q %
" 依次遍历子窗口"
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口"
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口"
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口"
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口"
nnoremap <Leader>jw <C-W>j

" nerdtree设置"
map <F2> :NERDTreeToggle<CR>
" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" NERDTree显示行号"
let NERDTreeShowLineNumbers = 1
let NERDTreeAutoCenter = 1
let NERDTreeShowHidden = 1

" nerdtree-git-plugin"
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeShowIgnoredStatus = 1

" Rust配置
let g:rustfmt_autosave = 1
