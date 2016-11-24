" Generated by Color Theme Generator at Sweyla
" http://sweyla.com/themes/seed/814005/

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "sweyla814005"

if version >= 700
  hi CursorLine     guibg=#000900 ctermbg=16
  hi CursorColumn   guibg=#000900 ctermbg=16
  hi MatchParen     guifg=#35A9FF guibg=#000900 gui=bold ctermfg=75 ctermbg=16 cterm=bold
  hi Pmenu          guifg=#FFFFFF guibg=#323232 ctermfg=255 ctermbg=236
  hi PmenuSel       guifg=#FFFFFF guibg=#590CE7 ctermfg=255 ctermbg=56
endif

" Background and menu colors
hi Cursor           guifg=NONE guibg=#FFFFFF ctermbg=255 gui=none
hi Normal           guifg=#FFFFFF guibg=#000900 gui=none ctermfg=255 ctermbg=16 cterm=none
hi NonText          guifg=#FFFFFF guibg=#0F180F gui=none ctermfg=255 ctermbg=233 cterm=none
hi LineNr           guifg=#303830 guibg=#192219 gui=none ctermfg=236 ctermbg=234 cterm=none
hi StatusLine       guifg=#FFFFFF guibg=#11092E gui=italic ctermfg=255 ctermbg=233 cterm=italic
hi StatusLineNC     guifg=#FFFFFF guibg=#283128 gui=none ctermfg=255 ctermbg=235 cterm=none
hi VertSplit        guifg=#FFFFFF guibg=#192219 gui=none ctermfg=255 ctermbg=234 cterm=none
hi Folded           guifg=#FFFFFF guibg=#000900 gui=none ctermfg=255 ctermbg=16 cterm=none
hi Title            guifg=#590CE7 guibg=NONE	gui=bold ctermfg=56 ctermbg=NONE cterm=bold
hi Visual           guifg=#7DADED guibg=#323232 gui=none ctermfg=111 ctermbg=236 cterm=none
hi SpecialKey       guifg=#1A5E8D guibg=#0F180F gui=none ctermfg=24 ctermbg=233 cterm=none
"hi DiffChange       guibg=#4C5200 gui=none ctermbg=58 cterm=none
"hi DiffAdd          guibg=#252B4C gui=none ctermbg=235 cterm=none
"hi DiffText         guibg=#663766 gui=none ctermbg=241 cterm=none
"hi DiffDelete       guibg=#3F0600 gui=none ctermbg=52 cterm=none
 
hi DiffChange       guibg=#4C4C09 gui=none ctermbg=234 cterm=none
hi DiffAdd          guibg=#252556 gui=none ctermbg=17 cterm=none
hi DiffText         guibg=#66326E gui=none ctermbg=22 cterm=none
hi DiffDelete       guibg=#3F000A gui=none ctermbg=0 ctermfg=196 cterm=none
hi TabLineFill      guibg=#5E5E5E gui=none ctermbg=235 ctermfg=228 cterm=none
hi TabLineSel       guifg=#7DADED gui=bold ctermfg=111 cterm=bold


" Syntax highlighting
hi Comment guifg=#590CE7 gui=none ctermfg=56 cterm=none
hi Constant guifg=#1A5E8D gui=none ctermfg=24 cterm=none
hi Number guifg=#1A5E8D gui=none ctermfg=24 cterm=none
hi Identifier guifg=#D60034 gui=none ctermfg=161 cterm=none
hi Statement guifg=#35A9FF gui=none ctermfg=75 cterm=none
hi Function guifg=#85ACA7 gui=none ctermfg=109 cterm=none
hi Special guifg=#8F1774 gui=none ctermfg=90 cterm=none
hi PreProc guifg=#8F1774 gui=none ctermfg=90 cterm=none
hi Keyword guifg=#35A9FF gui=none ctermfg=75 cterm=none
hi String guifg=#7DADED gui=none ctermfg=111 cterm=none
hi Type guifg=#6269A2 gui=none ctermfg=61 cterm=none
hi pythonBuiltin guifg=#D60034 gui=none ctermfg=161 cterm=none
hi TabLineFill guifg=#324A5E gui=none ctermfg=239 cterm=none

