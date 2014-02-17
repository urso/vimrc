
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

Bundle 'gmarik/vundle'

Bundle 'ervandew/supertab'

Bundle 'tpope/vim-pathogen'

if executable("ack-grep")
    let g:ackprg="ack-grep -H --nocolor --nogroup --column"
endif
Bundle 'mileszs/ack.vim'

Bundle 'YankRing.vim'

Bundle 'tpope/vim-repeat'

Bundle 'scratch.vim'

let g:localvimrc_count=-1
let g:localvimrc_ask=0
let g:localvimrc_sandbox=0
Bundle 'localvimrc'

" configure ctrl-p plugin
let g:ctrlp_map = '<leader>t'
let g:ctrlp_by_filename = 0
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_extensions = ['tag', 'buffertag', 'line']
Bundle 'git://github.com/kien/ctrlp.vim.git'
nmap <leader>r :CtrlPMRUFiles<CR>
nmap <leader>b :CtrlPBuffer<CR>

let g:alternateExtensions_cpp = "hh"
let g:alternateExtensions_cc = "hh,h"
let g:alternateExtensions_hh = "cpp,cxx,cc"
Bundle 'a.vim'

" don't load Align key maps
let g:loaded_AlignMapsPlugin=1
Bundle 'Align'

Bundle 'pangloss/vim-javascript'

Bundle 'Gundo'

Bundle 'indentpython.vim--nianyang'

let g:tagbar_compact = 1
Bundle 'majutsushi/tagbar'
nmap <leader>o :TagbarOpen j<CR>
nmap <leader>f :TagbarTogglePause<CR>

Bundle 'git://github.com/ollummis/sbd.vim.git'

let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_c_compiler_options = ''
Bundle 'scrooloose/syntastic.git'
nmap <leader>s :SyntasticToggleMode<CR>

Bundle 'git://repo.or.cz/vcscommand'

Bundle 'git://github.com/urso/sack_shortcut.git'

Bundle 'git://github.com/urso/haskell_syntax.vim.git'

Bundle 'git://github.com/gcmt/taboo.vim'

Bundle 'git://github.com/tpope/vim-unimpaired.git'

let g:airline_powerline_fonts=1
Bundle 'bling/vim-airline'

" color schemes
Bundle 'git://github.com/urso/github-theme.git'

Bundle 'xoria256.vim'

Bundle 'altercation/vim-colors-solarized'

let g:space_no_jump = 1
Bundle 'spiiph/vim-space'

" configure yankring
nnoremap \y :YRShow<CR>


