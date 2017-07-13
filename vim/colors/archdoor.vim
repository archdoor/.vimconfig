set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "archdoor"


highlight Normal		guifg=Grey80	guibg=Black					ctermfg=LightGrey	ctermbg=Black
highlight Search		guifg=Black		guibg=Red		gui=bold	ctermfg=Black		ctermbg=Red					cterm=none
highlight Visual		guifg=#404040					gui=bold	cterm=reverse
highlight Cursor		guifg=Black		guibg=Green		gui=bold	ctermfg=Black		ctermbg=Green				cterm=bold
highlight Special		guifg=Orange								ctermfg=Brown
highlight Comment		guifg=#80a0ff								ctermfg=Blue
highlight StatusLine	guifg=blue		guibg=white		gui=none	ctermfg=blue		ctermbg=white	term=none	cterm=none
highlight Statement		guifg=Yellow					gui=none	ctermfg=Yellow									cterm=none
highlight Type											gui=none													cterm=none
highlight LineNr		guifg=#90f020								ctermfg=green									cterm=none


" only for vim 5
if has("unix")
  if v:version<600
    highlight Normal  ctermfg=Grey	ctermbg=Black	cterm=none	guifg=Grey80      guibg=Black	gui=none
    highlight Search  ctermfg=Black	ctermbg=Red	cterm=bold	guifg=Black       guibg=Red	gui=bold
    highlight Visual  ctermfg=Black	ctermbg=yellow	cterm=bold	guifg=#404040			gui=bold
    highlight Special ctermfg=LightBlue			cterm=none	guifg=LightBlue			gui=none
    highlight Comment ctermfg=Cyan			cterm=none	guifg=LightBlue			gui=none
  endif
endif

