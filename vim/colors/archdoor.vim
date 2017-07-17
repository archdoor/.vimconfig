set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "archdoor"

" Normal		普通文本
" Comment		注释
" Constant		常量
" Special		特殊字符(如C中的%d,转义字符等)
" Statement		声明陈述类(for if where等)
" PreProc		预处理
" Type			类型
" Search		搜索颜色
" CursorLine	光标所在行
" CursorColumn	光标所在列
"
"
" highlight	主要用来配色，包括语法高亮等个性化的配置
" cterm		原生vim设置样式，设置为NONE表示可自定义
" ctermbg	终端vim的背景色
" ctermfg	终端vim的前景色
" guibg		gvim的背景色
" guifg		gvim的前景色

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
highlight Normal     ctermfg=LightGrey	ctermbg=Black
highlight Search     ctermfg=Black	ctermbg=Red	cterm=NONE
highlight Visual					cterm=reverse
highlight Cursor     ctermfg=Black	ctermbg=Green	cterm=bold
highlight Special    ctermfg=Brown
highlight Comment    ctermfg=DarkCyan
highlight StatusLine ctermfg=Blue	ctermbg=white
highlight Statement  ctermfg=Yellow			cterm=NONE
highlight Type						cterm=NONE
highlight LineNr	 ctermfg=DarkGrey   cterm=none

