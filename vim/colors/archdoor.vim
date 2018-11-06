" highlight(hi)	主要用来配色，包括语法高亮等个性化的配置
"	term		黑白终端vim的属性(没必要配置)
" 	cterm		彩色终端vim的属性，原生vim设置样式，设置为NONE表示可自定义
" 	ctermfg	彩色终端vim的前景色
" 	ctermbg	彩色终端vim的背景色

" vim文档给出的安全色如下：
"	0 Black					黑色
" 	1 DarkBlue				深蓝色
" 	2 DarkGreen				深绿色
" 	3 DarkCyan				深青色
" 	4 DarkRed					深红
" 	5 DarkMagenta				深洋红色
" 	6 Brown, DarkYellow		棕色
" 	7 LightGray, LightGrey, Gray, Grey	灰色
" 	8 DarkGray, DarkGrey		深灰色
" 	9 Blue, LightBlue			蓝色
" 	10 Green, LightGreen		绿色
" 	11 Cyan, LightCyan		蓝绿色
" 	12 Red, LightRed			红色
" 	13 Magenta, LightMagenta	洋红，品红
" 	14 Yellow, LightYellow	黄色
" 	15 White					白色
 
" 状态栏属性：
"	StatusLine	状态栏
" 	StatusLineNC	非当前窗口状态栏
" 	Error			错误
" 	ErrorMsg		错误信息
" 	WarningMsg	警告信息
" 	ModeMsg		当前模式
" 	MoreMsg		其他文本
" 	Question		询问用户
 
" 文本搜索属性：
"	IncSearch		增量搜索是匹配的文本字符
" 	Search		匹配的文本字符
 
" 弹出菜单：
"	Pmenu			弹出菜单
" 	PmenuSel		菜单当前选择项
 
" 窗体边框相关属性：
"	VertSplit		垂直分割窗口的边框
" 	LineNr		行号
" 	Cursor		光标所在字符
" 	CursorLine	光标所在行
" 	CursorColumn	光标所在列
" 	ColorColumn	标尺
" 	NonText		窗口尾部的~和@，以及文本里实际不显示的字符
 
" diff模式属性：
"	DiffAdd		diff模式增加的行
" 	DiffChange	diff模式改变的行
" 	DiffDelete	diff模式删除的行
" 	DiffText		diff模式插入的文本
 
" C/C++语法：
"	Comment		注释
" 	PreProc		预处理
" 	Type			数据类型
" 	Constant		常量
" 	Statement		控制语句(for if where等)
" 	Special		字符串中的特殊字符(如C中的%d,转义字符等)
" 	SpecialKey
" 	String		字符串
" 	cCppString	Cpp字符串
" 	Number		数字
" 	Todo			TODO/HACK/FIXME等标签
" 	Normal		普通文本

set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="desert"

" color terminal definitions
hi SpecialKey	ctermfg=darkgreen
hi NonText	cterm=bold ctermfg=darkblue
hi Directory	ctermfg=darkcyan
hi ErrorMsg	cterm=bold ctermfg=7 ctermbg=1
hi IncSearch	cterm=NONE ctermfg=yellow ctermbg=green
hi Search	cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg	ctermfg=darkgreen
hi ModeMsg	cterm=NONE ctermfg=brown
hi LineNr	ctermfg=darkgrey
hi Question	ctermfg=green
hi StatusLine	cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit	cterm=reverse
hi Title	ctermfg=5
hi Visual	cterm=reverse
hi VisualNOS	cterm=bold,underline
hi WarningMsg	ctermfg=1
hi WildMenu	ctermfg=0 ctermbg=3
hi Folded	ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	ctermfg=darkgrey ctermbg=NONE
hi DiffAdd	ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	cterm=bold ctermbg=1
hi Comment	ctermfg=darkgrey
hi Constant	ctermfg=brown
hi Number	ctermfg=136
hi Special	ctermfg=5
hi Identifier	ctermfg=6
hi Statement	ctermfg=brown
hi String	ctermfg=65
hi PreProc	ctermfg=6
hi Pmenu	ctermfg=252 ctermbg=25
hi PmenuSel	ctermfg=252 ctermbg=25
hi Type		ctermfg=2
hi Underlined	cterm=underline ctermfg=5
hi Ignore	cterm=bold ctermfg=7
hi Ignore	ctermfg=darkgrey
hi Error	cterm=bold ctermfg=7 ctermbg=1


