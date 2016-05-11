" vimrc by sunlight
" Last Update: 2013-1-11

colorscheme desert "set colorscheme
let mapleader = ";" "set leader for future use

syntax on
set nocompatible
set ru "display ruler
set nu "display line number
set sc "show uncomplete command
set sm "show the match parenthesis
set bs=2 "allow backspace to delete
set mouse=a "allow to use mouse

set whichwrap+=<,>,b,s "allow move between lines
set backspace=eol,start,indent "extend backspace

set ignorecase "ignore case, please notice the next option
set smartcase "ignore case when the pattern only contains small letters
set hls "highlight all the items which match search pattern
set is "open incsearch, do searching while type pattern
nmap <leader>s :nohlsearch<enter>

"for autocomplpop
highlight Pmenu ctermfg=255 ctermbg=19
highlight PmenuSel ctermfg=197 ctermbg=19
let g:acp_behaviorKeywordLength = 1

"for different filetype
filetype plugin indent on
set ts=4 | set sw=4 | set si
autocmd FileType c,cpp,java set ts=4 | set sw=4 | set si
autocmd FileType html,js,css,ruby set ts=2 | set sw=2 | set si | set et | set sta

"for fast switch
nmap <leader><tab> <c-w><c-w>

"for display tab
"set list
"set listchars=tab:>\ ,trail:.
"highlight SpecialKey ctermfg=242

"for c++11 syntax highlighting
autocmd BufNewFile,BufRead *.h,*.c,*.cc,*.cpp set syntax=cpp11

"for remove unwanted whitespaces
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\s\+$//e

"jump to the last open position automatically
"autocmd BufReadPost * exe "normal! g`\""

"for tComment
vmap <leader>c :TComment<enter>

"for NERDTree plugin
nmap <leader>v :NERDTree<enter>

"for taglist plugin
"please install Exuberant Ctags first
nmap <leader>t :TlistOpen<enter>
let Tlist_Show_One_File = 1 "only show tags for current file
let Tlist_Exit_OnlyWindow = 1 "close vim if taglist is the last window
let Tlist_Use_Right_Window = 1 "let taglist use the right window

"for minibufexplorer plugin
let g:miniBufExplMapWindowNavArrows = 1
nmap <c-t> :bn<enter>

"for CtrlP
let g:ctrlp_extensions = ['tag']
nmap <leader>f :CtrlPTag<enter>

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"""""""""""""" For latex
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
"set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

"OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'


autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
let NERDTreeIgnore = ['\.pyc$', '\.o$']


