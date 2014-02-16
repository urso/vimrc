
" configure Ack

if executable("ack-grep")
    let g:ackprg="ack-grep -H --nocolor --nogroup --column"
endif

" don't load Align key maps
let g:loaded_AlignMapsPlugin=1

let g:localvimrc_count=-1
let g:localvimrc_ask=0
let g:localvimrc_sandbox=0

" configure ctrl-p plugin
let g:ctrlp_map = '<leader>t'
let g:ctrlp_by_filename = 0
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_extensions = ['tag', 'buffertag', 'line']

let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_c_compiler_options = ''

let g:alternateExtensions_cpp = "hh"
let g:alternateExtensions_cc = "hh,h"
let g:alternateExtensions_hh = "cpp,cxx,cc"

let g:airline_powerline_fonts=1

let g:tagbar_compact = 1

" let g:ycm_filetype_specific_completion_to_disable = {
"     \ 'c' : 1,
"     \ 'cpp': 1,
"     \ 'python': 1
"     \ }
" let g:ycm_register_as_syntastic_checker = 0
" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_seed_identifiers_with_syntax = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-pathogen'
Bundle 'mileszs/ack.vim'
Bundle 'YankRing.vim'
Bundle 'tpope/vim-repeat'
Bundle 'scratch.vim'
Bundle 'localvimrc'
Bundle 'git://github.com/kien/ctrlp.vim.git'
Bundle 'a.vim'
Bundle 'Align'
Bundle 'pangloss/vim-javascript'
Bundle 'Gundo'
Bundle 'indentpython.vim--nianyang'
Bundle 'majutsushi/tagbar'
Bundle 'git://github.com/ollummis/sbd.vim.git'
Bundle 'scrooloose/syntastic.git'
Bundle 'git://repo.or.cz/vcscommand'
Bundle 'git://github.com/urso/sack_shortcut.git'
Bundle 'git://github.com/urso/haskell_syntax.vim.git'
Bundle 'git://github.com/gcmt/taboo.vim'
Bundle 'git://github.com/tpope/vim-unimpaired.git'
Bundle 'bling/vim-airline'

" color schemes
Bundle 'git://github.com/urso/github-theme.git'
Bundle 'xoria256.vim'
Bundle 'altercation/vim-colors-solarized'

let g:space_no_jump = 1
Bundle 'spiiph/vim-space'

" configure yankring
nnoremap \y :YRShow<CR>

nmap <leader>r :CtrlPMRUFiles<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader><leader>g :CtrlPTag<CR>
nmap <leader><leader>b :CtrlPBufTag<CR>
nmap <leader>l :CtrlPLine<CR>
nmap <leader>o :TagbarOpen j<CR>
nmap <leader>f :TagbarTogglePause<CR>
nmap <leader>s :SyntasticToggleMode<CR>

