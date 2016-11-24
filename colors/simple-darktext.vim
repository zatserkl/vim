" Vim color file

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="simple-dark"

hi Comment    cterm=NONE  gui=NONE      guifg=Red               guibg=NONE              ctermfg=DarkRed
hi Constant   cterm=NONE  gui=NONE      guifg=DarkBlue         guibg=NONE               ctermfg=DarkBlue
hi String     cterm=NONE  gui=NONE      guifg=DarkCyan         guibg=NONE               ctermfg=DarkGreen
hi Identifier cterm=NONE  gui=NONE      guifg=DarkBlue              guibg=NONE              ctermfg=DarkBlue
hi Statement  cterm=NONE  gui=NONE      guifg=DarkBlue             guibg=NONE               ctermfg=DarkBlue
hi PreProc    cterm=NONE  gui=NONE      guifg=DarkBlue              guibg=NONE
hi Type       cterm=NONE  gui=NONE      guifg=DarkBlue             guibg=NONE               ctermfg=DarkBlue
hi Special    cterm=NONE  gui=NONE      guifg=Red               guibg=NONE
hi Todo       cterm=NONE  gui=NONE      guifg=Red               guibg=Yellow
hi Error      cterm=NONE  gui=NONE      guifg=Red               guibg=NONE
hi Visual     cterm=NONE  gui=NONE      guifg=NONE              guibg=LightGray         ctermbg=LightGray
hi WarningMsg cterm=Bold  gui=Bold
