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
let g:colors_name="darkblue"

" hi Normal	ctermfg=28
hi Normal	ctermfg=7
hi LineNr	ctermfg=22
hi IncSearch	cterm=NONE ctermfg=green ctermbg=64
hi Search	cterm=NONE ctermfg=34 ctermbg=22
hi Comment	ctermfg=239
hi PreProc	ctermfg=27
hi CursorLine   cterm=underline ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi CursorColumn cterm=NONE ctermbg=236 ctermfg=NONE guibg=NONE guifg=NONE

hi SpecialKey	ctermfg=226
hi Directory	ctermfg=darkcyan
hi ErrorMsg	cterm=bold ctermfg=7 ctermbg=1
hi MoreMsg	ctermfg=darkgreen
hi ModeMsg	cterm=NONE ctermfg=brown
hi Question	ctermfg=green
hi StatusLine	cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit	cterm=NONE ctermfg=240 ctermbg=0
hi Title	ctermfg=5
hi Visual	ctermbg=238
hi VisualNOS	cterm=bold,underline
hi WarningMsg	ctermfg=1
hi WildMenu	ctermfg=0 ctermbg=3
hi Folded	ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	ctermfg=darkgrey ctermbg=NONE
hi DiffAdd	ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	cterm=bold ctermbg=1
hi Constant	ctermfg=brown
hi Number	ctermfg=136
hi Special	ctermfg=5
hi Identifier	ctermfg=6
hi Statement	ctermfg=brown
hi String	ctermfg=65
hi NonText	ctermfg=darkgrey
hi Pmenu	ctermfg=250 ctermbg=22
hi PmenuSel	ctermfg=250 ctermbg=28
hi PmenuSbar ctermfg=250 ctermbg=yellow
hi PmenuThumb ctermfg=250 ctermbg=yellow
hi Type		ctermfg=127
hi Underlined	cterm=underline ctermfg=5
hi Ignore	ctermfg=darkgrey
hi Error	cterm=bold ctermfg=7 ctermbg=1
hi Todo	cterm=bold ctermfg=black ctermbg=yellow
hi Cursor	guifg=black guibg=yellow ctermfg=black ctermbg=yellow
hi lCursor	guifg=black guibg=white ctermfg=black ctermbg=white

