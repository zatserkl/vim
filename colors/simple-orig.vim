" Vim color file
" Maintainer : sttillmann@users.sourceforge.net
" Last Change: 2006-10-04
" Version    : 1.0.0

set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

" let g:colors_name="lazarus"
let g:colors_name="simple"

hi Comment    cterm=NONE  gui=NONE      guifg=Red               guibg=NONE
hi Constant   cterm=NONE  gui=NONE      guifg=DarkGreen         guibg=NONE
hi Identifier cterm=NONE  gui=NONE      guifg=Blue              guibg=NONE
hi Statement  cterm=Bold  gui=Bold      guifg=Black             guibg=NONE
hi PreProc    cterm=Bold  gui=Bold      guifg=Blue              guibg=NONE
hi Type       cterm=Bold  gui=Bold      guifg=Black             guibg=NONE
hi Special    cterm=Bold  gui=Bold      guifg=Red               guibg=NONE
hi Todo       cterm=Bold  gui=Bold      guifg=Red               guibg=Yellow
hi Error      cterm=NONE  gui=NONE      guifg=Red               guibg=NONE
hi WarningMsg cterm=bold  gui=bold
