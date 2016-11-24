" Read the C++ syntax to start with
if version < 600
  so <sfile>:p:h/cpp.vim
else
  runtime! syntax/cpp.vim
  unlet b:current_syntax
endif

let b:current_syntax = "root"

au BufRead,BufNewFile *.C        set filetype=root
