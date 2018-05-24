" ++++++++++++++++++++++++++++基础配置++++++++++++++++++++++++++++++++++++
" 设置mapleader(默认'\')
let mapleader='\'

" vim分割线字符(空格)
set fillchars=vert:\ 

" 显示行号 
set nu 
" 禁止自动换行
" set nowrap

" 语法高亮
syntax on

" 全模式鼠标支持开启
" set mouse=a

" 设置tab宽度为4字节
set tabstop=4 
set softtabstop=4
set shiftwidth=4
" 并用4个空格代替tab键
autocmd FileType c,cpp set shiftwidth=4 | set expandtab

" 搜索字段高亮显示
set hlsearch

" 自动对齐，换行时自动和上一行对齐
set autoindent

" c/c++自动缩进
set cindent

" 依据上面的对齐格式，智能的选择对齐方式
set smartindent

" 光标始终位于中间位置(若是其他数字，则是光标距离上下边界的行数)
" set so=999
set so=5

" 搜索字段时开启实时搜索并定位
set incsearch "set is

" 显示状态行
set laststatus=2

" 开启256色支持
set t_Co=256

" 代码折叠：按缩进折叠
set foldmethod=indent
" 文件第一次打开时为非折叠状态
set foldlevel=99
" 折叠快捷键za映射为空格键
nnoremap <space> za

" 分割窗口之间的切换Ctrl+w映射为Ctrl+(h/j/k/l)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" 分割窗口大小调整
nnoremap <C-W>= :resize +5 <cr>
nnoremap <C-W>- :resize -5 <cr>
nnoremap <C-W>, :vertical resize -10 <cr>
nnoremap <C-W>. :vertical resize +10 <cr>

" 窗口调换到右边
nnoremap <C-W><C-L> <C-W>r
nnoremap <C-W><C-H> <C-W>R

" 统计光标所在字符串出现次数
nnoremap <Leader>wc :% s/<c-r><c-w>/&/gn <cr>

" a.vim插件快捷键映射
nnoremap <Leader>aa :A <cr>
nnoremap <Leader>av :AV <cr>
nnoremap <Leader>as :AS <cr>

" 设置编码类型
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set termencoding=utf-8

" 配色方案
colorscheme archdoor

" 打开文件自动定位到上次编辑位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" ++++++++++++++++++++++++++++插件配置++++++++++++++++++++++++++++++++++++
" 1.Github vim-script 用户插件：Plugin 'plugin'
" 	插件查询：http://vim-scripts.org/vim/scripts.html
" 2.Github 其他 用户插件：Plugin 'username/plugin'
" 3.非 Github 用户插件：Plugin ''git://git.wincent.com/command-t.git''
" 4.本地插件：Plugin 'file:///home/gmarik/path/to/plugin'
if 1

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#begin()  

Plugin 'gmarik/vundle' 

" 标签显示(首先安装ctags)
Bundle 'majutsushi/tagbar'
let g:tagbar_ctags_bin ='/usr/bin/ctags'
let g:tagbar_left = 1
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_sort = 0
nnoremap <silent> <leader>tl :TagbarToggle<cr>

" 代码注释
Plugin 'tpope/vim-commentary'
autocmd FileType python,shell,coffee set commentstring=#\ %s
autocmd FileType java,c,cpp set commentstring=//\ %s

" 符号配对
Plugin 'jiangmiao/auto-pairs'

" 文件搜索
Plugin 'kien/ctrlp.vim'

" 文件目录
Plugin 'scrooloose/nerdtree'
nnoremap <Leader>nt :NERDTree <cr>
" 无文件时自动退出
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 右侧显示窗口
let NERDTreeWinPos=1    
" 打开文件后是否关闭
let NERDTreeQuitOnlpen=0

" 单词高亮
Plugin 'Mark'

" 单词搜索(首先安装the_silver_searcher, ubuntu安装silversearcher_ag)
Plugin 'rking/ag.vim'
let g:ag_highlight=1
" 当前文件搜索
nnoremap <Leader>f :Ag! <c-r><c-w> <c-r>=expand("%:p")<cr>
" 当前目录搜索
nnoremap <Leader>F :Ag! <c-r><c-w>

" wiki笔记
Plugin 'vimwiki/vimwiki'
let g:vimwiki_dir_link='index'
let nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'c': 'c', 'asm': 's'}
let g:vimwiki_list = [{'path_html': '~/archdoor.github.io', 'css_name': 'css/vimwiki.css', 'auto_toc': 1, 'maxhi': 1}]
let g:vimwiki_hl_headers = 1
let g:vimwiki_toc_header = '目录索引'
let g:vimwiki_menu = ''
" 标记为完成的 checklist 项目会有特别的颜色
let g:vimwiki_hl_cb_checked = 1
" 利用tagbar生成wiki文件侧边栏目录
let g:tagbar_type_vimwiki = {
          \   'ctagstype':'vimwiki'
          \ , 'kinds':['h:header']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{'h':'header'}
          \ , 'sort':0
          \ , 'ctagsbin':'~/vimwiki/vwtags.py'
          \ , 'ctagsargs': 'default'
          \ }

" markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'
let g:instant_markdown_open_to_the_world = 1
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_autostart = 1

" 日历插件
Plugin 'mattn/calendar-vim'
nnoremap <Leader>cl :Calendar<cr>

" 终端颜色表
Plugin 'guns/xterm-color-table.vim'

Plugin 'Lokaltog/vim-powerline'
set guifont=PowerlineSymbols\ for\ Powerline
let g:Powerline_symbols = 'unicode'
set noshowmode

if 1
	Plugin 'Valloric/YouCompleteMe'
	set completeopt=longest,menu
	let g:ycm_confirm_extra_conf=0
	let g:ycm_enable_diagnostic_signs = 0
	let g:ycm_enable_diagnostic_highlighting = 0
	let g:ycm_echo_current_diagnostic = 0
	let g:ycm_autoclose_preview_window_after_completion=1
	let g:ycm_min_num_of_chars_for_completion=2
	let g:ycm_seed_identifiers_with_syntax=1
	let g:ycm_complete_in_comments = 1  
	let g:ycm_complete_in_strings = 1  
	let g:ycm_collect_identifiers_from_comments_and_strings = 0  
	let g:ycm_collect_identifiers_from_tags_files=1
	let g:ycm_cache_omnifunc=0
	let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
	nnoremap go :YcmCompleter GoToDefinitionElseDeclaration<cr>
endif

" XML文档编辑
Plugin 'othree/xml.vim'
" HTML文档编辑
Plugin 'mattn/emmet-vim.git'
" HTML编辑提示
Plugin 'Shougo/neocomplcache.vim'

call vundle#end()
filetype on 
filetype plugin on
filetype plugin indent on
	
endif
