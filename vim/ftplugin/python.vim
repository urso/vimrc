if exists("b:mypython")
    finish
endif
let b:mypython = 1

setlocal makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
setlocal efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

nmap <buffer> <leader>r :!python %<CR>
nmap <buffer> <leader>i :!ipython -i %<CR><CR>

"set iskeyword+=.

