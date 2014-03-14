
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

Bundle 'tpope/vim-repeat'

Bundle 'scratch.vim'

let g:localvimrc_count=-1
let g:localvimrc_ask=0
let g:localvimrc_sandbox=0
Bundle 'localvimrc'

"" configure ctrl-p plugin
"let g:ctrlp_map = '<leader>t'
"let g:ctrlp_by_filename = 0
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_follow_symlinks = 1
"let g:ctrlp_extensions = ['tag', 'buffertag', 'line']
"Bundle 'git://github.com/kien/ctrlp.vim.git'
"nmap <leader>r :CtrlPMRUFiles<CR>
"nmap <leader>b :CtrlPBuffer<CR>

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

Bundle 'ollummis/sbd.vim'

let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_c_compiler_options = ''
Bundle 'scrooloose/syntastic.git'
nmap <leader>s :SyntasticToggleMode<CR>

Bundle 'vcscommand.vim'

Bundle 'urso/sack_shortcut'

Bundle 'urso/haskell_syntax.vim'

Bundle 'gcmt/taboo.vim'

Bundle 'tpope/vim-unimpaired'

let g:airline_powerline_fonts=1
let g:airline_theme='zenburn'
Bundle 'bling/vim-airline'

" color schemes
Bundle 'urso/github-theme'

Bundle 'xoria256.vim'

let g:ShowTrailingWhitespace = 1
Bundle 'ShowTrailingWhitespace'
Bundle 'altercation/vim-colors-solarized'

let g:space_no_jump = 1
Bundle 'spiiph/vim-space'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
Bundle 'SirVer/ultisnips'


let g:unite_enable_start_insert = 1
let g:unite_matcher_fuzzy_max_input_length=100

let g:unite_source_rec_unit = 1000
let g:unite_source_find_max_candidates=1000
Bundle 'Shougo/unite.vim'
Bundle 'tsukkee/unite-tag'
Bundle 'Shougo/unite-outline'
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file_rec,file_rec/async', 'ignore_pattern', 'bin/')
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files -start-insert -sync file_rec/async:!<CR>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<CR>
nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffer -start-insert buffer<CR>
nnoremap <leader>j :<C-u>Unite -no-split -buffer-name=jump -start-insert jump<CR>
" nnoremap <leader>g :<C-u>Unite -no-split -buffer-name=tags -start-insert tag<CR>
let g:unite_source_rec_max_cache_files = 0
call unite#custom#source('file_rec,tag,file_rec/async', 'max_candidates', 0)

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction


