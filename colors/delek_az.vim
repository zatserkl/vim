" Vim color file
" Maintainer:	David Schweikert <dws@ee.ethz.ch>
" Last Change:	2006 Apr 30

hi clear

let colors_name = "delek_az"

" Normal should come first
hi Normal     guifg=Black  guibg=White
hi Cursor     guifg=bg     guibg=fg
hi lCursor    guifg=NONE   guibg=Cyan

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi DiffAdd    ctermbg=LightBlue    guibg=LightBlue
hi DiffChange ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete ctermfg=Blue	   ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan
hi DiffText   ctermbg=Red	   cterm=bold gui=bold guibg=Red
hi Directory  ctermfg=DarkBlue	   guifg=Blue
hi ErrorMsg   ctermfg=White	   ctermbg=DarkRed  guibg=Red	    guifg=White
hi FoldColumn ctermfg=DarkBlue	   ctermbg=Grey     guibg=Grey	    guifg=DarkBlue
hi Folded     ctermbg=Grey	   ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi IncSearch  cterm=reverse	   gui=reverse
hi LineNr     ctermfg=Brown	   guifg=Brown
hi ModeMsg    cterm=bold	   gui=bold
hi MoreMsg    ctermfg=DarkGreen    gui=bold guifg=SeaGreen
hi NonText    ctermfg=Blue	   gui=bold guifg=gray guibg=white
hi Pmenu      guibg=LightBlue
hi PmenuSel   ctermfg=White	   ctermbg=DarkBlue  guifg=White  guibg=DarkBlue
hi Question   ctermfg=DarkGreen    gui=bold guifg=SeaGreen
hi Search     ctermfg=NONE	   ctermbg=LightGray guibg=Yellow guifg=NONE
hi SpecialKey ctermfg=DarkBlue	   guifg=Blue
hi StatusLine cterm=bold	   ctermbg=blue ctermfg=yellow guibg=gold guifg=blue
hi StatusLineNC	cterm=bold	   ctermbg=blue ctermfg=black  guibg=gold guifg=blue
hi Title      ctermfg=DarkMagenta  gui=bold guifg=Magenta
hi VertSplit  cterm=reverse	   gui=reverse
hi Visual     ctermbg=NONE	   cterm=reverse gui=reverse guifg=Grey guibg=fg
hi VisualNOS  cterm=underline,bold gui=underline,bold
hi WarningMsg ctermfg=DarkRed	   guifg=Red
hi WildMenu   ctermfg=Black	   ctermbg=Yellow    guibg=Yellow guifg=Black

" syntax highlighting
hi Comment    cterm=NONE ctermfg=DarkRed     gui=NONE guifg=red2
hi Identifier cterm=NONE ctermfg=DarkCyan    gui=NONE guifg=cyan4
hi PreProc    cterm=NONE ctermfg=DarkMagenta gui=NONE guifg=magenta3
hi Special    cterm=NONE ctermfg=LightRed    gui=NONE guifg=deeppink
hi Statement  cterm=bold ctermfg=Blue	     gui=bold guifg=blue
hi Type	      cterm=NONE ctermfg=Blue	     gui=bold guifg=blue
" AZ
" hi Constant   cterm=NONE ctermfg=DarkGreen   gui=NONE guifg=green3
hi Constant   cterm=NONE ctermfg=DarkBlue   gui=NONE guifg=darkblue
hi String   cterm=NONE ctermfg=DarkGreen   gui=NONE guifg=DarkGreen

" vim: sw=2

" AZ
""" syn keyword cStatement cout endl ends cin exitl
""" syn keyword cppType Option_t Bool_t Int_t UInt_t Long64_t Float_t Double_t Char_t UChar_t Byte_t Short_t UShort_t Axis_t Float16_t Double32_t
""" syn keyword cppType TF1 TH1 TH1F TH1D TH1I TH2 TH2F TH2D
""" syn keyword cppType TLorentzVector TGraph TMultiGraph TGraphErrors TCanvas TFile TDirectory TDirectoryFile TTree TChain TBranch TSpectrum TLegend TArrow TEventList TClonesArray TArrayD TList IIter TEventList TFitResultPtr TRandom3 TPaveText TString
""" " seems, where is no cppConstant --- syn keyword cppConstant kTRUE kFALSE gROOT gDirectory gPad gStyle
""" syn keyword cConstant kTRUE kFALSE gROOT gDirectory gPad gStyle
""" syn keyword cTODO NB FIXME
""" " syntax keyword NotaBene 
""" """ syntax match  Function "::[ \n\t]\w"
""" """ syntax match  Function "::.*\>"
""" syntax region Function start="::" end="\>"
""" syntax region CommentOut start="//[^ \t]" end="$"
""" " NB: NotaBene pattern should be after the CommentOut to win
""" syntax region NotaBene start="//\-\-" end="$"
""" syntax region Slash3 start="///" end="$"
""" "--doesnotwork-- syntax match Link "http[s]*://[^> \n]*"
""" syntax match Link "http[s]*://[^> $]*"
""" "" ROOT NB: should be after the CommentOut to win
""" syntax region RootControl start="//!" end="$"
""" syntax region RootControl start="//\->" end="$"
""" syntax region RootControl start="//\[\]" end="$"
""" syntax region RootControl start="//\[" end="$"
""" syntax region RootControl start="//||" end="$"
""" " NB: added beginning of line: 'typedef' itself is a keywordf
""" syntax match Typedef "^[ \t]*typedef[^;]*"

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
