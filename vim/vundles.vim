
" configure Ack

if executable("ack-grep")
    let g:ackprg="ack-grep -H --nocolor --nogroup --column"
endif

let g:localvimrc_count=-1
let g:localvimrc_ask=0
let g:localvimrc_sandbox=1

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
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'ColorX'
Bundle 'a.vim'
Bundle 'Align'
Bundle 'pangloss/vim-javascript'
Bundle 'Gundo'
Bundle 'indentpython.vim--nianyang'
Bundle 'pyflakes.vim'
Bundle 'majutsushi/tagbar'

" color schemes
Bundle 'github-theme'
Bundle 'xoria256.vim'
Bundle 'ciaranm/inkpot'
Bundle 'jellybeans.vim'

" configure yankring
nnoremap \y :YRShow<CR> 

