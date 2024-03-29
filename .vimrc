" 基础配置
" 这里是自动让 vimrc 配置文件生效，根据 vimrc 的实际路径修改 ~/.vimrc
if has("autocmd")
   autocmd! bufwritepost vimrc source ~/.vimrc
endif

" 不与 Vi 兼容 （采用 Vim 自己的操作命令）
set nocompatible
" backspace有几种工作方式，默认是vi兼容的,以下配置是用来解决 vim 中退格键不能用的问题
"  indent: 如果用了:set indent,:set ai 等自动缩进，想用退格键将字段缩进的删掉，必须设置这个选项。否则不响应。
" eol:如果插入模式下在行开头，想通过退格键合并两行，需要设置eol 
" start：要想删除此次插入前的输入，需设置这个 
set backspace=indent,eol,start

" 开启文件类型检查，并且载入与该类型对应的缩进规则,例如 .py 去查找配置 ~/.vim/indent/python.vim
filetype indent plugin on
" 打开语法高亮。自动识别代码，使用多种颜色显示
syntax on
" 在底部显示，当前处于命令模式还是插入模式
set showmode
" 命令模式下，在底部显示，当前键入的指令
set showcmd
" 支持使用鼠标
set mouse=a
" 使用 utf-8 编码
set encoding=utf-8
set fileencoding=utf-8
" 从Win上复制文件时，避免换行符错误
set fileformat=unix
" 启用256色
set t_Co=256

" 缩进配置

" 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set autoindent
" 由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格
set expandtab
" Tab 转为多少个空格
set softtabstop=4
" 按下 Tab 键时，Vim 显示的空格数
set tabstop=4
" 在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数
set shiftwidth=4
" Enable smart-indent
set smartindent
" Enable smart-tabs
set smarttab

" 外观配置

" 显示行号
set number
" 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号
set relativenumber
" 光标所在的当前行高亮
set cursorline
" 设置行宽，即一行显示多少个字符
set textwidth=100
" 关闭自动折行"
"set nowrap"
" 自动折行，即太长的行分成几行显示
set wrap
" 只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行
set linebreak
" 指定折行处与编辑窗口的右边缘之间空出的字符数
set wrapmargin=2
" 垂直滚动时，光标距离顶部/底部的位置（单位：行）
set scrolloff=5
" 水平滚动时，光标距离行首或行尾的位置（单位：字符）。该配置在不折行时比较有用
set sidescrolloff=15
" 是否显示状态栏。0 表示不显示，1 表示只在多窗口时显示，2 表示显示
set laststatus=2
" 在状态栏显示光标的当前位置（位于哪一行哪一列）
set  ruler
" 设置为双字宽显示，否则无法完整显示如:☆
set ambiwidth=double 

" 搜索

" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set showmatch
" 搜索时，高亮显示匹配结果
set hlsearch
" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch
" 搜索时忽略大小写
set ignorecase
" 如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test
set smartcase

" 编辑

" 打开英语单词的拼写检查
set spell spelllang=en_us
" 不创建备份文件。默认情况下，文件保存时，会额外创建一个备份文件，它的文件名是在原文件名的末尾，再添加一个波浪号（〜）
set nobackup
" 不创建交换文件。交换文件主要用于系统崩溃时恢复文件，文件名的开头是.、结尾是.swp
set noswapfile

" Vim 会在编辑时保存操作历史，用来供用户撤消更改。默认情况下，操作记录只在本次编辑时有效，一旦编辑结束、文件关闭，操作历史就消失了。打开这个设置，可以在文件关闭后，操作记录保留在一个文件里面，继续存在。这意味着，重新打开一个文件，可以撤销上一次编辑时的操作。撤消文件是跟原文件保存在一起的隐藏文件，文件名以.un~开头
" 保留撤销历史"
set undofile

" 设置备份文件、交换文件、操作历史文件的保存位置
" 结尾的//表示生成的文件名带有绝对路径，路径中用%替换目录分隔符，这样可以防止文件重名
" set backupdir=~/.vim/.backup// 
" set directory=~/.vim/.swp// 
" set undodir=~/.vim/.undo// 

" 自动切换工作目录。这主要用在一个 Vim 会话之中打开多个文件的情况，默认的工作目录是打开的第一个文件的目录。该配置可以将工作目录自动切换到，正在编辑的文件的目录
set autochdir
" 出错时，不要发出响声
set noerrorbells
" 出错时，发出视觉提示，通常是屏幕闪烁
set visualbell
" Vim 需要记住多少次历史操作
set history=1000
" 打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示
set autoread

" 命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令
set wildmenu
set wildmode=longest:list,full

" 解决拷贝的时遇到注释会自动注释后续所有行的问题
set paste

" 快捷键
" H和L跳转到行首行末 
noremap H ^
noremap L $

" 快速保存和退出 w 保存 q 退出"，配合 mapleader 建一起使用
let mapleader = ","
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>

" 插件配置
" 需要先按照 install 说明中先下载对应的插件
" 参考 https://github.com/tpope/vim-pathogen 安装插件管理器
execute pathogen#infect()

" 主题颜色
colorscheme desert
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

" nerdtree 插件的配置
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
"Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
"Close vim if the only window left open is a NERDTree"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"Open a NERDTree 使用 ctrl + n 快捷键
nmap <C-n> :NERDTreeToggle<CR>
