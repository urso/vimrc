
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
let g:ctrlp_by_filename = 1
let g:ctrlp_switch_buffer = 0
" let g:ctrlp_regexp = 1
let g:ctrlp_working_path_mode = 0
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_extensions = ['tag', 'buffertag', 'line']

let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_c_compiler_options = ''

let g:alternateExtensions_cpp = "hh"
let g:alternateExtensions_cc = "hh,h"
let g:alternateExtensions_hh = "cpp,cxx,cc"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

Bundle 'gmarik/vundle'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-pathogen'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'YankRing.vim'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'scratch.vim'
Bundle 'localvimrc'
Bundle 'git://github.com/kien/ctrlp.vim.git'
Bundle 'ColorX'
Bundle 'a.vim'
Bundle 'Align'
Bundle 'pangloss/vim-javascript'
Bundle 'Gundo'
Bundle 'indentpython.vim--nianyang'
Bundle 'pyflakes.vim'
Bundle 'majutsushi/tagbar'
Bundle 'orftz/sbd.vim'
Bundle 'scrooloose/syntastic.git'
Bundle 'bitc/vim-hdevtools.git'
Bundle 'git://repo.or.cz/vcscommand'
Bundle 'taglist.vim'
Bundle 'git://github.com/urso/sack_shortcut.git'

" color schemes
Bundle 'git://github.com/urso/github-theme.git'
Bundle 'xoria256.vim'
Bundle 'ciaranm/inkpot'
Bundle 'jellybeans.vim'


"Bundle 'SirVer/ultisnips'

" configure yankring
nnoremap \y :YRShow<CR>

nmap <leader>r :CtrlPMRUFiles<CR>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader><leader>g :CtrlPTag<CR>
nmap <leader><leader>b :CtrlPBufTag<CR>
nmap <leader>l :CtrlPLine<CR>
nmap <leader>o :TlistToggle<CR>
nmap <leader>s :SyntasticToggleMode<CR>

