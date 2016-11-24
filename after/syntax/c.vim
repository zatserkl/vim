" "AZ
syn keyword cStatement cout endl ends cin exitl
syn keyword cppType Option_t Bool_t Int_t Long64_t UInt_t ULong_t Float_t Double_t Char_t UChar_t Byte_t Short_t UShort_t Axis_t Float16_t Double32_t
syn keyword cppType TF1 TH1 TH1F TH1D TH1I TH2 TH2F TH2D
syn keyword cppType TVector3 TLorentzVector TGraph TMultiGraph TGraphErrors TCanvas TFile TDirectory TDirectoryFile TTree TChain TBranch TSpectrum TLegend TArrow TEventList TClonesArray TObjArray TArrayD TList IIter TEventList TFitResultPtr TRandom3 TPaveText TString TAxis TPaveStats TLinearFitter
" seems, where is no cppConstant --- syn keyword cppConstant kTRUE kFALSE gROOT gDirectory gPad gStyle
syn keyword cConstant kTRUE kFALSE gROOT gDirectory gPad gStyle
syn keyword cTODO NB FIXME

"""    " syntax keyword NotaBene 
"""    """ syntax match  Function "::[ \n\t]\w"
"""    """ syntax match  Function "::.*\>"
"""    syntax region Function start="::" end="\>"
"""    syntax region CommentOut start="//[^ \t]" end="$"
"""    " NB: NotaBene pattern should be after the CommentOut to win
"""    syntax region NotaBene start="//\-\-" end="$"
"""    syntax region Slash3 start="///" end="$"
"""    "--doesnotwork-- syntax match Link "http[s]*://[^> \n]*"
"""    syntax match Link "http[s]*://[^> $]*"
"""    "" ROOT NB: should be after the CommentOut to win
"""    syntax region RootControl start="//!" end="$"
"""    syntax region RootControl start="//\->" end="$"
"""    syntax region RootControl start="//\[\]" end="$"
"""    syntax region RootControl start="//\[" end="$"
"""    syntax region RootControl start="//||" end="$"
"""    " NB: added beginning of line: 'typedef' itself is a keywordf
"""    syntax match Typedef "^[ \t]*typedef[^;]*"
