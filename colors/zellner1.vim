" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "zellner"

hi Comment term=bold ctermfg=Red guifg=Red
hi Normal guifg=black guibg=white
hi Constant term=underline ctermfg=Magenta guifg=Magenta
hi String term=underline ctermfg=DarkGreen guifg=DarkGreen
hi Special term=bold ctermfg=Magenta guifg=Magenta
hi Identifier term=underline ctermfg=Blue guifg=Blue
hi Statement term=bold ctermfg=DarkRed gui=NONE guifg=Brown
hi PreProc term=underline ctermfg=Magenta guifg=Purple
hi Type term=underline ctermfg=Blue gui=NONE guifg=Blue
hi Visual term=reverse ctermfg=Yellow ctermbg=Red gui=NONE guifg=Black guibg=Yellow
hi Search term=reverse ctermfg=Black ctermbg=Cyan gui=NONE guifg=Black guibg=Cyan
hi Tag term=bold ctermfg=DarkGreen guifg=DarkGreen
hi Error term=reverse ctermfg=15 ctermbg=9 guibg=Red guifg=White
hi Todo term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow
hi  StatusLine term=bold,reverse cterm=NONE ctermfg=Yellow ctermbg=DarkGray gui=NONE guifg=Yellow guibg=DarkGray
hi! link MoreMsg Comment
hi! link ErrorMsg Visual
hi! link WarningMsg ErrorMsg
hi! link Question Comment
" hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Constant
hi link Float		Number
hi link Function	Identifier
hi link Conditional	Statement
hi link Repeat	Statement
hi link Label		Statement
hi link Operator	Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special

"AZ
syn keyword cStatement cout endl ends cin exitl
syn keyword cppType Option_t Bool_t Int_t UInt_t Long64_t Float_t Double_t Char_t UChar_t Byte_t Short_t UShort_t Axis_t Float16_t Double32_t
syn keyword cppType TF1 TH1 TH1F TH1D TH1I TH2 TH2F TH2D
syn keyword cppType TLorentzVector TGraph TMultiGraph TGraphErrors TCanvas TFile TDirectory TDirectoryFile TTree TChain TBranch TSpectrum TLegend TArrow TEventList TClonesArray TArrayD TList IIter TEventList TFitResultPtr TRandom3 TPaveText TString
" seems, where is no cppConstant --- syn keyword cppConstant kTRUE kFALSE gROOT gDirectory gPad gStyle
syn keyword cConstant kTRUE kFALSE gROOT gDirectory gPad gStyle
syn keyword cTODO NB FIXME
" syntax keyword NotaBene 
""" syntax match  Function "::[ \n\t]\w"
""" syntax match  Function "::.*\>"
syntax region Function start="::" end="\>"
syntax region CommentOut start="//[^ \t]" end="$"
" NB: NotaBene pattern should be after the CommentOut to win
syntax region NotaBene start="//\-\-" end="$"
syntax region Slash3 start="///" end="$"
"--doesnotwork-- syntax match Link "http[s]*://[^> \n]*"
syntax match Link "http[s]*://[^> $]*"
"" ROOT NB: should be after the CommentOut to win
syntax region RootControl start="//!" end="$"
syntax region RootControl start="//\->" end="$"
syntax region RootControl start="//\[\]" end="$"
syntax region RootControl start="//\[" end="$"
syntax region RootControl start="//||" end="$"
" NB: added beginning of line: 'typedef' itself is a keywordf
syntax match Typedef "^[ \t]*typedef[^;]*"

" my patterns
hi Function    cterm=NONE      ctermfg=darkcyan       gui=NONE        guifg=darkcyan
hi NotaBene    cterm=bold      ctermfg=red         gui=bold        guifg=red
hi CommentOut    cterm=NONE      ctermfg=Brown         gui=NONE        guifg=Brown
hi Slash3    cterm=NONE      ctermfg=DarkRed         gui=NONE        guifg=Red2
hi Link    cterm=NONE      ctermfg=LightBlue         gui=NONE        guifg=LightBlue
" ROOT
hi RootControl cterm=bold      ctermfg=Red    gui=bold        guifg=Red
" typedef
hi Typedef    cterm=bold      ctermfg=Magenta         gui=bold        guifg=Magenta

