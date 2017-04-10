
set nocompatible              " 去除VI一致性,必须
filetype on                   " 必须

" 		
" 基本配置
" 		

" 设置文件编码
set encoding=utf-8
set fenc=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb2312,gb18030,big5

" 设置默认字体
set guifont=Monaco:h13

" 总是显示状态栏
set laststatus=2
" 自定义状态栏
"set statusline=%2*%n%m%r%h%w%*\ %F\ %1*[FORMAT=%2*%{&ff}:%{&fenc!=''?&fenc:&enc}%1*]\ [TYPE=%2*%Y%1*]\ [COL=%2*%03v%1*]\ [ROW=%2*%03l%1*/%3*%L(%p%%)%1*]\
"set statusline=%F%m%r%h%w/[FORMAT=%{&ff}:%{&fenc!=''?&fenc:&enc}]/[TYPE=%Y]/[ASCII=/%03.3b]/[HEX=/%02.2B]/[POS=%04l,%04v][%p%%]/[LEN=%L]
" 显示命令行有1行
set ch=1
" 显示光标当前位置
set ruler
" 开启行号显示number
set nu
" 开启相对行号 relativenumber
set rnu
" 高亮显示当前行cursorline
set cul
" 高亮显示当前列cursorcolumn
set cuc
" 允许所有模式下使用鼠标
set mouse=a
" 显示当前模式
set showmode
" 显示当前命令
set showcmd

" 配色
set background=dark
colorscheme solarized
"colorscheme molokai
"colorscheme phd

" 设置窗口透明度
set transparency=10

"记录命令历史的行数
set history=1000

" GUI 配置
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
"set guioptions-=m
"set guioptions-=T

" 		
" 搜索设置
" 		
"
" 自动转义
set magic
" 设置匹配模式
set showmatch
" 设置大写搜索必须匹配大写
set smartcase
" 小写搜索可以找到大写
set ignorecase
" 高亮显示搜索结果
set hlsearch
" 边输入边搜索
set incsearch
" 不重新搜索
set nowrapscan

" 		
" 代码设置
" 		

" 设置语法高亮
syntax enable
" Vim用缺省值覆盖自己的
syntax on

" 设置代码折叠
" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 设置执行最深的嵌套数
set foldnestmax=1
" 启动 vim 时关闭折叠代码
set nofoldenable
" 禁止折行
set nowrap
" 去掉输入错误的提示音
set noerrorbells
" Vim自身命令行模式智能补全
set wildmenu
set wildmode=full
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 覆盖文件时不备份
set nobackup
" 文件保存后取消备份
set nowritebackup
" 取消交换区
set noswapfile
" 键入时隐藏鼠标
set mousehide
" 让退格键和delete键都支持删除回车符
set backspace=indent,eol,start
" 设置光标之下的最少行数
set scrolloff=3
" 设置光标移动到屏幕之外时，自动向右滚动10个字符
set sidescroll=10



" 		
" 缩进设置
" 		

" 自动缩进
set autoindent
" 按照C语言的语法，自动的调整缩进的长度
set cindent
" 智能缩进
set smartindent
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 与shiftwidth配合
set smarttab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 显示缩进tab线
" set list lcs=tab:\--
set list listchars=eol:¬,tab:▸\ ,trail:.,

