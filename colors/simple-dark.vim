" Vim color file

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="simple-dark"

" hi Search       cterm=NONE  gui=NONE    guifg=NONE                                      ctermbg=LightGray
hi Comment    cterm=NONE  gui=NONE      guifg=Red               guibg=NONE              ctermfg=DarkRed
hi String     cterm=NONE  gui=NONE      guifg=DarkCyan          guibg=NONE              ctermfg=DarkCyan
hi Constant   cterm=NONE  gui=NONE      guifg=Blue              guibg=NONE              ctermfg=Blue
hi Identifier cterm=NONE  gui=NONE      guifg=Blue              guibg=NONE              ctermfg=Blue
hi Statement  cterm=NONE  gui=NONE      guifg=Blue              guibg=NONE              ctermfg=Blue
hi PreProc    cterm=NONE  gui=NONE      guifg=Blue              guibg=NONE              ctermfg=Blue
hi Type       cterm=NONE  gui=NONE      guifg=Blue              guibg=NONE              ctermfg=Blue
hi Special    cterm=NONE  gui=NONE      guifg=Red               guibg=NONE
hi Todo       cterm=NONE  gui=NONE      guifg=Red               guibg=Yellow
hi Error      cterm=NONE  gui=NONE      guifg=Red               guibg=NONE
hi Visual     cterm=NONE  gui=NONE      guifg=NONE              guibg=LightGray         ctermbg=LightGray
hi Special    cterm=NONE  gui=NONE      guifg=Red               guibg=NONE              ctermfg=Red
hi WarningMsg cterm=Bold  gui=Bold
