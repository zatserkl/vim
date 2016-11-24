" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
""" runtime! debian.vim

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" autocmd VimLeave * macaction terminate:         " for MacVim to terminate

" AZ: my command. NB: The comment will displayed in vim
ca w update " to write type complete word 'write'

"------------------ minimum start --------------------
set title		" to show filename in window title
set titleold=""		" to avoid message "Thanks for flying Vim"
" interface
set hidden			" allows to leave current buffer modified when switch to other buffer
set backspace=indent,eol,start	" allow backspacing over everything in insert mode
set ruler			" show the cursor position all the time
set showcmd			" display incomplete commands
set showmode			" display INSERT in the insert mode
" search
set incsearch			" do incremental searching
set hlsearch			" highlight search pattern
set viminfo^=h			" turn off highlighting of the prev search at vim startup
" indent
set autoindent			" always set autoindenting on
set copyindent			" Copy the structure of the existing lines indent when autoindenting a new line
set preserveindent		" Preserve the structure of the existing lines indent as much as possible
" syntax and mouse
set nocursorline
if has("syntax")
  syntax on
endif
if has("mouse_xterm")
  set mouse=a			" for vim version >= 7 NB: use Shift + middle mouse button to paste X-selection
endif
" audio and visual error bells
set noerrorbells
set vb t_vb=
if has("autocmd")
  autocmd GUIEnter * set vb t_vb=
endif

" do not show matching parentheses. See :h matchparen
if has("eval")
  let loaded_matchparen = 1	" prevets loading of the plugin
endif
set noshowmatch			" to avoid cursor move to matched parenthesis

set nobackup			" do not keep a backup file
set nowritebackup
set timeoutlen=200              " delay between Esc and key (e.g. O), default is 1000
"------------------ minimum end --------------------

"------------------ interface preferences begin ------------------
set directory=~/.vim	" keep swap files in this dir

" set makeprg=latex\ %	" to latex file in the current window
" set makeprg=pdflatex\ --output-format\ dvi\ %	" to latex file with pdflatex in the current window
set makeprg=pdflatex\ %	" to pdflatex file in the current window
if has("autocmd")
  set autochdir                   " especially useful with the LaTeX inverse search
endif

" to use rsync with compression for remove edition like
" socksify gvim 'rsync://vmepcs2b18-11.cms/~/pos/head-fsm/build/TriDAS/pixel/PixelDCSInterface/src/common/PixelDCStoTrkFECDpInterface.cc'
" another example (NB on slash after the machine name):
" gvim 'rsync://pct@pctlinux//home/pct/work/Tia/samples.C'
" use relative path:
" gvim rsync://pct@pctlinux/learn/map_erase.cpp
if has("eval")
  let g:netrw_rsync_cmd="rsync -az"
endif

" AZ: when I connected with remote computer the buffer cannot be modified, set bt=
" E382: Cannot write, 'buftype' option is set
" if has("autocmd")
"   au BufRead,BufNewFile * setl buftype=
" endif

set clipboard=unnamed           " to use global clipboard, enables Shift-Ins after Shift-Del or Ctrl-Ins

set display=lastline		" if line doesn't fit in window don't show @ at the end
set wildmode=longest,list	" tab filename completion
set sidescroll=1		" for nowrap: scroll horizontally 1 col (default is jump)

set updatetime=60000            " after 60000 ms the swap file will be written to disk, message: Error detected while processing CursorHold Auto commands

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif
  
  " prompt to reload file when it was changed on disk (gvim does that when receives a focus)
if has("autocmd")
  au CursorHold * checktime
endif

" set nottyfast for remote editing
set ttyfast

" cinoptions
"
" g0    start private, protected and public from the first col.
" c0    start C-comment from 0 column
" (0    shift for the next line with unclosed parentheses
" u0    same as (0 but for one level deeper
"
" The defaults, spelled out in full, are:
" cinoptions=>s,e0,n0,f0,{0,}0,^0,L-1,:s,=s,l0,b0,gs,hs,N0,ps,ts,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,k0,m0,j0,J0,)20,*70,#0
"
set cino=g0,c0,(0,u0			" g0:start private, protected and public from the first col.
"""set cino += c0
"------------------ interface preferences end ------------------

"
"       gVim settings (instead of .gvimrc)
"
" Do not set gvim option in the common section of the .vimrc to avoid column # problem in xterm
if has('gui_running')
	" The best is do not specify GUI font at all!
	set guifont=Luxi\ Mono:h12                  " MacVim: NB font size with h
	" set guifont=Menlo:h12                  " MacVim: NB font size with h
	" set guifont=Menlo\ Regular:h12                  " MacVim: NB font size with h
	" set guifont=DejaVu\ Sans\ Mono\ 9
	" set guifont=Luxi\ Mono\ 10
	" set guifont=Luxi\ Mono\ 9
	" set guifont=Monospace\ 10
	" set guifont=Liberation\ Mono\ 10
	" set guifont=Lucida\ Sans\ Typewriter\ Oblique\ 10
	" set guifont=Terminus\ Bold\ 12
	" set guifont=Courier\ 10\ Pitch\ 12

	" To set the toolbars off (icons on top of the screen)
	set guioptions-=T
	set guioptions-=m

	" set guioptions-=r       " right vertical scrollbar
	" set guioptions+=b	" horizontal scroll bar
	" set guioptions+=h	  " restrict the computation by the current line (faster)

	" Here is the way to set height (lines) of gVim (graphical Vim) window:
	set lines=34
	" and here is how to set width (columns) of gVim windows:
	" set columns=90
	set columns=100
	" set columns=80
	set mousehide		" Hide the mouse when typing text
	
	" customize menu
	" To see current menu use :tmenu ToolBar
	" tmenu is responsible for the tooltip displayed when hovering the icon.
	" Use amenu to decide what should happen when the icon is clicked.
	" :tmenu ToolBar.tabnew New Tab
	" :amenu ToolBar.tabnew :tabnew<CR>
endif

"
"       syntax options and tab behavior
"
filetype plugin indent on

if has("autocmd")
  au BufNewFile,BufRead *.h,*.hh,*.hpp,*.H,*.c,*.cpp,*.cxx,*.cc,*.CPP     setl filetype=cpp
  " au BufRead,BufNewFile *.C             setl filetype=root
  au BufRead,BufNewFile *.C             setfiletype root
  au BufRead,BufNewFile *.C             if &ft == 'cpp' | set ft=root | endif
  au BufRead,BufNewFile root_hist*      setl filetype=root|setl autoread

  " au BufRead,BufNewFile *.nb		setl filetype=nb
  au BufRead,BufNewFile *.nb,*.t	setfiletype nb
  au BufRead,BufNewFile *.nb,*.t        if &ft == 'nroff' | set ft=nb | endif
  au BufRead,BufNewFile README		setl filetype=nb
  au BufRead,BufNewFile *.cfi		setl filetype=cfg
  au BufRead,BufNewFile *.cff		setl filetype=cfg
  au BufRead,BufNewFile *.mac		setl filetype=cfg
  " xdaq log file
  au BufRead,BufNewFile log.*		setl filetype=nb
  au BufRead,BufNewFile *.log		setl filetype=nb
  " tstore view file
  au BufRead,BufNewFile *.view		setl filetype=xml
  " vimperatorrc
  au BufRead,BufNewFile .vimperatorrc	setl filetype=vim
  au BufRead,BufNewFile *.out		setl filetype=nb
  " dat
  au BufNewFile,BufRead *.dat		setl filetype=dat
  
  " Language:    CERNLIB kumac (Kit for a User interface MACro) files (for PAW)
  " Maintainer:  Kevin B. McCarty <kmccarty@debian.org>
  au BufNewFile,BufRead *.kumac setl filetype=kumac
  au BufNewFile,BufRead *.kum setl filetype=kumac
  au BufNewFile,BufRead *.KUM setl filetype=kumac
  au BufNewFile,BufRead *.kumacold setl filetype=kumac
  au BufNewFile,BufRead .kumacs setl filetype=kumac
  au BufNewFile,BufRead *.tex setl spell
  " au! BufNewFile,BufRead *.R,*.Rout,*.r,*.Rhistory,*.Rt,*.Rout.save,*.Rout.fail setf r
endif

"	Note: Setting 'tabstop' to any other value than 8 can make your file
"	appear wrong in many places (e.g., when printing it).
"
"	There are four main ways to use tabs in Vim:
"	1. Always keep 'tabstop' at 8, set 'softtabstop' and 'shiftwidth' to 4
"	   (or 3 or whatever you prefer) and use 'noexpandtab'.  Then Vim
"	   will use a mix of tabs and spaces, but typing <Tab> and <BS> will
"	   behave like a tab appears every 4 (or 3) characters.
"	2. Set 'tabstop' and 'shiftwidth' to whatever you prefer and use
"	   'expandtab'.  This way you will always insert spaces.  The
"	   formatting will never be messed up when 'tabstop' is changed.
"	3. Set 'tabstop' and 'shiftwidth' to whatever you prefer and use a
"	   |modeline| to set these values when editing the file again.  Only
"	   works when using Vim to edit the file.
"	4. Always set 'tabstop' and 'shiftwidth' to the same value, and
"	   'noexpandtab'.  This should then work (for initial indents only)
"	   for any tabstop setting that people use.  It might be nice to have
"	   tabs after the first non-blank inserted as spaces if you do this
"	   though.  Otherwise aligned comments will be wrong when 'tabstop' is
"	   changed.

"
" last used settings for noexpandtab (Oct 2013)
"
""" set shiftwidth=0        " will be used tabstop value -- problem with MacVim: > 0
set expandtab
" if has("autocmd")
"   autocmd FileType c	  setl tabstop=2|setl shiftwidth=2|setl nowrap|setl cindent
"   autocmd FileType cpp	  setl tabstop=2|setl shiftwidth=2|setl nowrap|setl cindent
"   autocmd FileType root	  setl tabstop=3|setl shiftwidth=3|setl nowrap|setl cindent
"   autocmd FileType python setl tabstop=4|setl shiftwidth=4|setl nowrap|setl smarttab
"   autocmd FileType kumac  setl tabstop=3|setl shiftwidth=3|setl nowrap|setl smarttab
"   autocmd FileType dat	  setl tabstop=8|setl shiftwidth=8		" default
"   autocmd FileType make   setl noexpandtab				" make sure noexpandtab for Makefiles
" endif

"--AZ: my settings
" if has("autocmd")
"   autocmd FileType c	  setl tabstop=4|setl shiftwidth=4|setl nowrap|setl cindent
"   autocmd FileType cpp	  setl tabstop=4|setl shiftwidth=4|setl nowrap|setl cindent
"   autocmd FileType root	  setl tabstop=4|setl shiftwidth=4|setl nowrap|setl cindent
"   autocmd FileType python setl tabstop=4|setl shiftwidth=4|setl nowrap|setl smarttab
"   autocmd FileType kumac  setl tabstop=4|setl shiftwidth=4|setl nowrap|setl smarttab
"   autocmd FileType dat	  setl tabstop=8|setl shiftwidth=8		" default
"   autocmd FileType make   setl noexpandtab				" make sure noexpandtab for Makefiles
" endif

"--AZ: similar to set line in MacVim
if has("autocmd")
  autocmd FileType c	  setl tabstop=8|setl softtabstop=4|setl shiftwidth=4|setl nowrap|setl cindent
  autocmd FileType cpp	  setl tabstop=8|setl softtabstop=4|setl shiftwidth=4|setl nowrap|setl cindent
  autocmd FileType root	  setl tabstop=8|setl softtabstop=4|setl shiftwidth=4|setl nowrap|setl cindent
  autocmd FileType python setl tabstop=8|setl softtabstop=4|setl shiftwidth=4|setl nowrap|setl smarttab
  autocmd FileType java   setl tabstop=8|setl softtabstop=4|setl shiftwidth=4|setl nowrap|setl cindent
  autocmd FileType R      setl tabstop=8|setl softtabstop=4|setl shiftwidth=4|setl nowrap|setl cindent
  autocmd FileType kumac  setl tabstop=8|setl softtabstop=4|setl shiftwidth=4|setl nowrap|setl smarttab
  autocmd FileType dat	  setl tabstop=8|setl shiftwidth=8		" default
  autocmd FileType make   setl noexpandtab				" make sure noexpandtab for Makefiles
endif

" AZ: avoid annoying adding of comment symbol to the next line
" NB: need to be after something. Place at the end of the file to be sure.
if has("autocmd")
" au BufRead,BufNewFile * set formatoptions-=roc
  au BufRead,BufNewFile * set formatoptions-=r
  au BufRead,BufNewFile * set formatoptions-=c
  au BufRead,BufNewFile * set formatoptions-=o
endif

""" " vim -b : edit binary using xxd-format!
""" " see :h hex-editing
""" augroup Binary
"""   au!
"""   au BufReadPre  *.bin,*.dat let &bin=1
"""   au BufReadPost *.bin,*.dat if &bin | %!xxd
"""   au BufReadPost *.bin,*.dat set ft=xxd | endif
"""   au BufWritePre *.bin,*.dat if &bin | %!xxd -r
"""   au BufWritePre *.bin,*.dat endif
"""   au BufWritePost *.bin,*.dat if &bin | %!xxd
"""   au BufWritePost *.bin,*.dat set nomod | endif
""" augroup END

" see all possible colors in /usr/share/vim/vim73/syntax/colortest.vim
" MacVim location: /Applications/MacVim.app/Contents/Resources/vim/runtime/syntax/colortest.vim
" to see the colors read in the beginning of the file:
" edit this file, then do ":source %", and check if the colors match
" /usr/share/vim/vim71/colors/delek.vim
" see also definition of comments, string, etc. in /usr/share/vim/vim72/syntax/c.vim

if has("syntax")
  """""""""""""" colorscheme andre
  colorscheme default
endif

" if has("syntax")
"   colorscheme delek     " my preffered color scheme but with red comments and green strings
"   hi String     cterm=NONE      ctermfg=DarkGreen   gui=NONE        guifg=DarkGreen
"   hi Special    cterm=bold      ctermfg=red	  gui=bold	  guifg=red
"   
"   " use bold for messages like "search hit BOTTOM, continuing at TOP"
"   hi WarningMsg	cterm=bold gui=bold
" 
"   " stolen from /usr/share/vim/vim72/colors/koehler.vim: grey instead of black tabline
"   hi TabLineFill	term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
"   hi Search ctermbg=gray
"   
"   hi link NotaBene Special
"   hi link RootControl Special
"   hi link Slash3 Comment
"   hi link CommentOut LineNr
"   hi link Number Identifier
"   hi link Float Identifier
" endif
" 
" " my function to set my colors for NoteBene (Special), etc.
" if has("autocmd")
"   fun NB()	" to call: :call NB()
"   	hi Special    cterm=bold        gui=bold
"   	hi WarningMsg cterm=bold gui=bold
"   	hi link Number Identifier
"   	hi link Float Identifier
"   	hi Search ctermbg=gray
"   endfun
"   ca nb call NB() " set colors for NotaBene, LineNr(CommentOut), WarningMsg
" endif

""" Syntax highlighting groups

" map to show the syntax group
" map <F3> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" " show syntax highlighting element
" function! SyntaxItem()
"   return synIDattr(synID(line("."),col("."),1),"name")
" endfunction
" " insert this function into the status line
" set statusline+=%{SyntaxItem()}

" " some example what can be in the statusline:
" if has('statusline')
"   set statusline=%#Question#                   " set highlighting
"   set statusline+=%-2.2n\                      " buffer number
"   set statusline+=%#WarningMsg#                " set highlighting
"   set statusline+=%f\                          " file name
"   set statusline+=%#Question#                  " set highlighting
"   set statusline+=%h%m%r%w\                    " flags
"   set statusline+=%{strlen(&ft)?&ft:'none'},   " file type
"   set statusline+=%{(&fenc==\"\"?&enc:&fenc)}, " encoding
"   set statusline+=%{((exists(\"+bomb\")\ &&\ &bomb)?\"B,\":\"\")} " BOM
"   set statusline+=%{&fileformat},              " file format
"   set statusline+=%{&spelllang},               " language of spelling checker
"   set statusline+=%{SyntaxItem()}              " syntax highlight group under cursor
"   set statusline+=%=                           " ident to the right
"   set statusline+=0x%-8B\                      " character code under cursor
"   set statusline+=%-7.(%l,%c%V%)\ %<%P         " cursor position/offset
" endif

" 
"
"       extras
"

" -------- for lxplus and other CERN machines ---------
"  t_kb is Backspace key
"  t_kD is Delete key
" Noting that ^? is input by typing ctrl+v, then backspace, and ^H from
" ctrl+v then delete.
" Depending on the language settings and unicode mode on either end of an
" ssh connection, this may not appear as ^H, you may see something similar to ?^[[3~?.
set t_kb=
set t_kD=[3~

" "  scroll left and right when 'nowrap': 
" map <C-L> zl 
" map <C-H> zh
" map <C-J> <C-E>
" map <C-K> <C-Y>

""" map ,r :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline <C-r>=line('.')<CR> %<.pdf %<CR>

" set additional keywords in .vimrc

autocmd Syntax * syn keyword cStatement cout endl ends cin exitl
autocmd Syntax * syn keyword cType Option_t Bool_t Int_t Long64_t UInt_t ULong_t Float_t Double_t Char_t UChar_t Byte_t Short_t UShort_t Axis_t Float16_t Double32_t
autocmd Syntax * syn keyword cType TF1 TH1 TH1F TH1D TH1I TH2 TH2F TH2D
autocmd Syntax * syn keyword cType TVector3 TLorentzVector TGraph TMultiGraph TGraphErrors TCanvas TFile TDirectory TDirectoryFile TTree TChain TBranch TSpectrum TLegend TArrow TEventList TClonesArray TObjArray TArrayD TList IIter TEventList TFitResultPtr TRandom3 TPaveText TString TAxis TPaveStats TLinearFitter
autocmd Syntax * " seems, where is no cppConstant --- syn keyword cppConstant kTRUE kFALSE gROOT gDirectory gPad gStyle
autocmd Syntax * syn keyword cConstant kTRUE kFALSE gROOT gDirectory gPad gStyle
" Todo for C, Python and Vim. NB: XXX is already there.
autocmd Syntax * syn keyword cTodo contained FIXME HACK NB AZ
autocmd Syntax * syn keyword pythonTodo contained FIXME HACK NB AZ
autocmd Syntax * syn keyword vimTodo contained FIXME HACK NB AZ

" " Vim syntax file
" " Language:	C/C++ ROOT 
" " Maintainer:	Theo Christoudias
" " Last Change:	2008 Oct 18
" " Remark:	Addon to c.vim (see :help 44.11)
" " Remark:	ROOT webite: http://root.cern.ch
" 
" if !exists("c_no_cern_root")
"    syn keyword	cType		TH1 TH1C TH1D TH1F TH1I TH1K TH1S 
"    syn keyword	cType		TH2 TH2C TH2D TH2F TH2I TH2S
"    syn keyword	cType		TH3 TH3C TH3D TH3F TH3I TH3S
"    syn keyword	cType		TF1 TF2 TF3
"    syn keyword	cType		THStack TGraph TGraph2D TCanvas TRandom TLimit TLatex
"    syn keyword	cType		TNtuple TObject TTree TIter TKey TRandom2 TShape TPad TMacro
"    syn keyword	cType           TString TLine TLegend TFile TDatime TRandom3 TMath
"    syn keyword	cType           TLeaf TLeafB TLeafC TLeafD TLeafElement TLeafF TLeafI TLeafL TLeafO TLeafObject
"    syn keyword	cType           TChain TDirectory TList TArc TBox TEllipse TPolyLine TCurlyLine TCurlyArc TEllipse
"    syn keyword	cType           TMinuit TFitter TLinearFitter TLorentzVector TLorentzRotation TVector3 TVector2
"    syn keyword	cType           TRotation TGenPhaseSpace TFeldmanCousins TRobustEstimator TRolke TQuaternion
"    syn keyword	cType           TPostScript TSVG TPDF TImageDump THtml TColor TStyle TComplex TPRegexp
"    syn keyword	cType           TObjArrayIter TMapIter TClass TEnv TGlobal TCint TROOT TDictionary TTime TTimer
"    syn keyword	cType           Double_t Int_t Float_t Long_t Bool_t Byte_t
"    syn keyword	cType      	char_t Marker_t Double32_t Float16_t Long64_t
"    syn keyword	cType           Short_t Stat_t Style_t Text_t UShort_t  
"    syn keyword	cConstant       kRed kPink kBlue kMagenta kViolet kAzure kCyan kTeal kGreen kSpring kYellow
"    syn keyword	cConstant       kSolid kDashed kDotted kDashDotted kDot kPlus kStar kCircle kMultiply kFullDotSmall
"    syn keyword	cConstant       kFullDotMedium kFullDotLarge kOpenTriangleDown kFullCross kFullCircle kFullSquare
"    syn keyword	cConstant       kFullTriangleUp kFullTriangleDown kOpenCircle kOpenSquare kOpenTriangleUp 
"    syn keyword	cConstant       kOpenDiamond kOpenCross kFullStar kOpenStar
"    syn keyword	cConstant       kTRUE kFALSE 
"    syn keyword	cConstant       kIsClass kIsStruct kIsUnion kIsEnum kIsNamespace kIsTypedef kIsFundamental 
"    syn keyword	cConstant       kIsAbstract kIsVirtual kIsPureVirtual kIsPublic kIsProtected kIsPrivate kIsPointer 
"    syn keyword	cConstant       kIsArray kIsStatic kIsDefault kIsReference kIsConstant kIsConstPointer kIsMethConst
"    syn keyword	cSpecial        gGeometry gHistImagePalette gWebImagePalette gGrid gClassTable gObjectTable
"    syn keyword	cSpecial        gProof gPerfStats gTQSender gTQSlotParams gDebug gDirectory gROOT gFile gPad 
"    syn keyword	cSpecial        gApplication gBenchmark gEnv gErrorIgnoreLevel gErrorAbortLevel gRandom gStyle
"    syn keyword	cSpecial        gRootDir gProgName gProgPath gSystem gVirtualPS gDragManager gGuiBuilder gCurrentRegion
"    syn keyword	cSpecial        gClient gMinuit gHtml
" endif
