if exists("b:myhaskell")
    finish
endif
let b:myhaskell = 1

set tabstop=2
set shiftwidth=2
set expandtab

set nolisp

let g:hs_highlight_delimiters=1
let g:hs_highlight_boolean=1
let g:hs_highlight_types=1
let g:hs_highlight_debug=1
let g:hs_allow_hash_operator=1

" configure haskell mode
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"
"let g:haddock_docdir = "/usr/share/doc/ghc/html/"
let g:haddock_docdir = expand('$HOME/Library/Haskell/doc')
au Bufenter *.hs compiler ghc

"let b:colors_name='jellybeans'
