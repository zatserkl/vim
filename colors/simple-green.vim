" Vim color file

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="simple"

" hi Search       cterm=NONE  gui=NONE    guifg=NONE                                      ctermbg=LightGray
hi Comment    cterm=NONE  gui=NONE      guifg=Red               guibg=NONE              ctermfg=Red
hi Constant   cterm=NONE  gui=NONE      guifg=DarkBlue          guibg=NONE              ctermfg=Blue
" hi String     cterm=NONE  gui=NONE      guifg=DarkCyan          guibg=NONE              ctermfg=DarkCyan
" hi Character  cterm=NONE  gui=NONE      guifg=DarkCyan          guibg=NONE              ctermfg=DarkCyan
hi String     cterm=NONE  gui=NONE      guifg=green4          guibg=NONE              ctermfg=DarkGreen
hi Character  cterm=NONE  gui=NONE      guifg=green4          guibg=NONE              ctermfg=DarkGreen
hi Identifier cterm=Bold  gui=Bold      guifg=Blue              guibg=NONE              ctermfg=Blue
hi Function   cterm=Bold  gui=Bold      guifg=Blue              guibg=NONE              ctermfg=Blue
hi Statement  cterm=Bold  gui=Bold      guifg=Blue              guibg=NONE              ctermfg=Blue
hi Type       cterm=Bold  gui=Bold      guifg=Blue              guibg=NONE              ctermfg=Blue
hi PreProc    cterm=Bold  gui=Bold      guifg=DarkCyan          guibg=NONE              ctermfg=DarkCyan   
hi Special    cterm=NONE  gui=NONE      guifg=Magenta           guibg=NONE              ctermfg=Magenta
hi Todo       cterm=NONE  gui=Bold      guifg=Red               guibg=Yellow
hi Error      cterm=NONE  gui=NONE      guifg=Red               guibg=NONE
hi Visual     cterm=NONE  gui=NONE      guifg=NONE              guibg=LightGray         ctermbg=LightGray
hi WarningMsg cterm=Bold  gui=Bold
hi CursorLine cterm=NONE  gui=NONE      guibg=NONE
