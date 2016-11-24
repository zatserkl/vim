" Vim color file
" Maintainer : zatserkl@fnal.gov
" Last Change: 2014-06-29
" Version    : 1.0.0

" hi clear Normal
" set bg&
" set background=light

set background=dark
if exists("syntax_on")
  syntax reset
endif

let g:colors_name="andre"

hi Normal       guifg=Black guibg=#00AAAA       " RGB: 65536*0 + 256*170 + 170
" hi Normal       guifg=Black guibg=White       " RGB: 65536*0 + 256*170 + 170
" hi Normal       guifg=Black guibg=MediumSeaGreen       " RGB: 65536*0 + 256*170 + 170

hi Search       cterm=NONE  gui=NONE    guifg=NONE      guibg=DarkGray
hi Visual       cterm=NONE  gui=NONE    guifg=NONE      guibg=LightGray                     ctermbg=LightGray
hi Comment      cterm=NONE  gui=NONE    guifg=White     guibg=NONE      ctermfg=DarkRed
hi Constant     cterm=NONE  gui=NONE    guifg=DarkBlue  guibg=NONE      ctermfg=DarkBlue
hi String       cterm=NONE  gui=NONE    guifg=Blue      guibg=NONE      ctermfg=DarkGreen
hi Character    cterm=NONE  gui=NONE    guifg=Blue      guibg=NONE      ctermfg=DarkGreen
hi Boolean      cterm=NONE  gui=NONE    guifg=Blue      guibg=NONE      ctermfg=Blue
hi Number       cterm=NONE  gui=NONE    guifg=DarkBlue  guibg=NONE      ctermfg=DarkBlue
hi Identifier   cterm=NONE  gui=NONE    guifg=DarkBlue  guibg=NONE      ctermfg=DarkBlue
hi Statement    cterm=NONE  gui=NONE    guifg=DarkBlue  guibg=NONE      ctermfg=DarkBlue
hi Type         cterm=NONE  gui=NONE    guifg=DarkBlue  guibg=NONE      ctermfg=DarkBlue
hi Typedef      cterm=NONE  gui=NONE    guifg=Magenta   guibg=NONE      ctermfg=Magenta
hi PreProc      cterm=NONE  gui=NONE    guifg=Cyan      guibg=NONE      ctermfg=DarkMagenta
hi Special      cterm=NONE  gui=NONE    guifg=Cyan      guibg=NONE      ctermfg=DarkMagenta
hi Todo         cterm=NONE  gui=Bold    guifg=Cyan       guibg=NONE    ctermfg=DarkRed     ctermbg=LightYellow
hi Error        cterm=NONE  gui=NONE    guifg=Red       guibg=NONE
hi WarningMsg   cterm=NONE  gui=NONE    guifg=Red       guibg=NONE
hi Question                 gui=NONE    guifg=White     guibg=NONE
hi MoreMsg                  gui=NONE    guifg=White     guibg=NONE
hi CursorLine   cterm=NONE  gui=NONE                    guibg=NONE
