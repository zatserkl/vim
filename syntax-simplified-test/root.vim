" Read the C++ syntax to start with
if version < 600
  so <sfile>:p:h/cpp.vim
else
  runtime! syntax/cpp.vim
  unlet b:current_syntax
endif

let b:current_syntax = "root"

au BufRead,BufNewFile *.C        set filetype=root

" "AZ
syn keyword cStatement cout endl ends cin exitl
syn keyword cppType Option_t Bool_t Int_t UInt_t Long64_t Float_t Double_t Char_t UChar_t Byte_t Short_t UShort_t Axis_t Float16_t Double32_t
syn keyword cppType TF1 TH1 TH1F TH1D TH1I TH2 TH2F TH2D
syn keyword cppType TLorentzVector TGraph TMultiGraph TGraphErrors TCanvas TFile TDirectory TDirectoryFile TTree TChain TBranch TLeaf TSpectrum TLegend TArrow TEventList TClonesArray TObjArray TArrayD TList IIter TEventList TFitResultPtr TRandom3 TPaveText TString TAxis
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
""""""""""""""""""""""""""""""""""syntax match Link "http[s]*://[^> $]*"
"" ROOT NB: should be after the CommentOut to win
syntax region RootControl start="//!" end="$"
syntax region RootControl start="//\->" end="$"
syntax region RootControl start="//\[\]" end="$"
syntax region RootControl start="//\[" end="$"
syntax region RootControl start="//||" end="$"
" NB: added beginning of line: 'typedef' itself is a keywordf
""""""""""""""""""""""""""""""""""syntax match Typedef "^[ \t]*typedef[^;]*"

" " Associate our matches and regions with pretty colours
" if version >= 508 || !exists("did_root_syn_inits")
"   if version < 508
"     let did_root_syn_inits = 1
"     command -nargs=+ HiLink hi link <args>
"   else
"     command -nargs=+ HiLink hi def link <args>
"   endif
" 
"   HiLink CommentOut		LineNr
"   " HiLink NotaBene		WarningMsg
"   " HiLink NotaBene		Special
"   HiLink NotaBene		Comment
"   HiLink Slash3			Comment
"   HiLink RootControl		Comment
"   " HiLink Function		Special
" 
"   delcommand HiLink
" endif
