" 配置主题整体色调，只有两个选择：dark(暗色调)  light(亮色调)
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "archdoor"

"
" highlight	主要用来配色，包括语法高亮等个性化的配置
" term		黑白终端vim的属性(没必要配置)
" cterm		彩色终端vim的属性，原生vim设置样式，设置为NONE表示可自定义
" ctermfg	彩色终端vim的前景色
" ctermbg	彩色终端vim的背景色
" gui		GUI属性
" guifg		gvim的前景色
" guibg		gvim的背景色
" 
" 由于不是所有终端都支持256色，因此使用一些安全色会使我们的主题更有移植性，
" 而GUI可以支持所有颜色，不在考虑范围之内，vim文档给出的安全色如下：
" 0 Black					黑色
" 1 DarkBlue				深蓝色
" 2 DarkGreen				深绿色
" 3 DarkCyan				深青色
" 4 DarkRed					深红
" 5 DarkMagenta				深洋红色
" 6 Brown, DarkYellow		棕色
" 7 LightGray, LightGrey, Gray, Grey	灰色
" 8 DarkGray, DarkGrey		深灰色
" 9 Blue, LightBlue			蓝色
" 10 Green, LightGreen		绿色
" 11 Cyan, LightCyan		蓝绿色
" 12 Red, LightRed			红色
" 13 Magenta, LightMagenta	洋红，品红
" 14 Yellow, LightYellow	黄色
" 15 White					白色
" 
" 状态栏属性：
" StatusLine	状态栏
" StatusLineNC	非当前窗口状态栏
" Error			错误
" ErrorMsg		错误信息
" WarningMsg	警告信息
" ModeMsg		当前模式
" MoreMsg		其他文本
" Question		询问用户
" 
" 文本搜索属性：
" IncSearch		增量搜索是匹配的文本字符
" Search		匹配的文本字符
" 
" 弹出菜单
" Pmenu			弹出菜单
" PmenuSel		菜单当前选择项
" 
" 窗体边框相关属性：
" VertSplit		垂直分割窗口的边框
" LineNr		行号
" Cursor		光标所在字符
" CursorLine	光标所在行
" CursorColumn	光标所在列
" ColorColumn	标尺
" NonText		窗口尾部的~和@，以及文本里实际不显示的字符
" 
" diff模式属性：
" DiffAdd		diff模式增加的行
" DiffChange	diff模式改变的行
" DiffDelete	diff模式删除的行
" DiffText		diff模式插入的文本
" 
" C/C++语法
" Comment		注释
" PreProc		预处理
" Type			数据类型
" Constant		常量
" Statement		控制语句(for if where等)
" Special		字符串中的特殊字符(如C中的%d,转义字符等)
" String		字符串
" cCppString	Cpp字符串
" Number		数字
" Todo			TODO/HACK/FIXME等标签
" Normal		普通文本
"

" GUI
highlight Normal     guifg=Grey80	guibg=Black
highlight Search     guifg=Black	guibg=Red	gui=bold
highlight Visual     guifg=#404040			gui=bold
highlight Cursor     guifg=Black	guibg=Green	gui=bold
highlight Special    guifg=Orange
highlight Comment    guifg=#80a0ff
highlight StatusLine guifg=blue		guibg=white
highlight Statement  guifg=Yellow			gui=NONE
highlight Type						gui=NONE
highlight LineNr	guifg=#90f020

" Console
highlight Normal     ctermfg=Grey	ctermbg=Black
highlight Search     ctermfg=Black	ctermbg=DarkBlue	cterm=NONE
highlight Visual					cterm=reverse
highlight Cursor     ctermfg=Black	ctermbg=Green	cterm=bold
highlight Special    ctermfg=DarkRed
highlight Comment    ctermfg=DarkGrey
highlight Statement  ctermfg=Brown			cterm=NONE
highlight Type		 ctermfg=DarkGreen			cterm=NONE
highlight LineNr	 ctermfg=DarkGrey   cterm=none
highlight String	 ctermfg=Brown   cterm=none

