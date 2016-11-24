" " Read the C++ syntax to start with
" if version < 600
"   so <sfile>:p:h/cpp.vim
" else
"   runtime! syntax/cpp.vim
"   unlet b:current_syntax
" endif

"AZ
syntax region Comment start="//[ \t]" end="$"
" syntax region Function start="::" end="\>"
syntax region CommentOut start="//[^ \t]" end="$"
" NB: NotaBene pattern should be after the CommentOut to win
syntax region NotaBene start="//\-\-" end="$"
syntax region Slash3 start="///" end="$"
syntax match Link "http[s]*://[^> $]*"
syn keyword	cTodo		contained TODO FIXME XXX NB

" " ROOT NB: should be after the CommentOut to win
" syntax region RootControl start="//!" end="$"
" syntax region RootControl start="//\->" end="$"
" syntax region RootControl start="//\[\]" end="$"
" syntax region RootControl start="//||" end="$"

" let b:current_syntax = "nb"

" au BufRead,BufNewFile *.nb        set filetype=nb
" au BufRead,BufNewFile *.t        set filetype=nb

"
" AZ: stole string/char block from /usr/share/vim/vim71/syntax/c.vim
"
" String and Character constants
" Highlight special characters (those which have a backslash) differently
syn match	cSpecial	display contained "\\\(x\x\+\|\o\{1,3}\|.\|$\)"
if !exists("c_no_utf")
  syn match	cSpecial	display contained "\\\(u\x\{4}\|U\x\{8}\)"
endif
if exists("c_no_cformat")
  syn region	cString		start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=cSpecial,@Spell
  " cCppString: same as cString, but ends at end of line
  syn region	cCppString	start=+L\="+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end='$' contains=cSpecial,@Spell
else
  if !exists("c_no_c99") " ISO C99
    syn match	cFormat		display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlLjzt]\|ll\|hh\)\=\([aAbdiuoxXDOUfFeEgGcCsSpn]\|\[\^\=.[^]]*\]\)" contained
  else
    syn match	cFormat		display "%\(\d\+\$\)\=[-+' #0*]*\(\d*\|\*\|\*\d\+\$\)\(\.\(\d*\|\*\|\*\d\+\$\)\)\=\([hlL]\|ll\)\=\([bdiuoxXDOUfeEgGcCsSpn]\|\[\^\=.[^]]*\]\)" contained
  endif
  syn match	cFormat		display "%%" contained
  syn region	cString		start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=cSpecial,cFormat,@Spell
  " cCppString: same as cString, but ends at end of line
  syn region	cCppString	start=+L\="+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end='$' contains=cSpecial,cFormat,@Spell
endif

syn match	cCharacter	"L\='[^\\]'"
syn match	cCharacter	"L'[^']*'" contains=cSpecial
if exists("c_gnu")
  syn match	cSpecialError	"L\='\\[^'\"?\\abefnrtv]'"
  syn match	cSpecialCharacter "L\='\\['\"?\\abefnrtv]'"
else
  syn match	cSpecialError	"L\='\\[^'\"?\\abfnrtv]'"
  syn match	cSpecialCharacter "L\='\\['\"?\\abfnrtv]'"
endif
syn match	cSpecialCharacter display "L\='\\\o\{1,3}'"
syn match	cSpecialCharacter display "'\\x\x\{1,2}'"
syn match	cSpecialCharacter display "L'\\x\x\+'"

"when wanted, highlight trailing white space
if exists("c_space_errors")
  if !exists("c_no_trail_space_error")
    syn match	cSpaceError	display excludenl "\s\+$"
  endif
  if !exists("c_no_tab_space_error")
    syn match	cSpaceError	display " \+\t"me=e-1
  endif
endif

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link cFormat		cSpecial                "keepline
hi def link cCppString		cString         "keepline
hi def link cCharacter		Character               "keepline
hi def link cSpecialCharacter	cSpecial                "keepline
hi def link cSpaceError		cError          "keepline
hi def link cString		String          "keepline
hi def link cSpecial		SpecialChar             "keepline
