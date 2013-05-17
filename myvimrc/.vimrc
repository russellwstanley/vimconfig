"FileType support
set filetype=on
filetype plugin on
filetype indent on

"Close doc buffer when tab completion is finished
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif "closes doc buffer automatically
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"Hightlight current line
"autocmd FileType javascript,html,css,php autocmd InsertLeave * set nocursorline
"autocmd FileType javascript,html,css,php autocmd InsertEnter * set cursorline
autocmd FileType javascript,html,css,php highlight CursorLine ctermbg=40 cterm=NONE

"Indentation
autocmd FileType javascript,html,css,php set ai
autocmd FileType javascript,html,css,php set sw=2
autocmd FileType javascript,html,css,php set ts=2
autocmd FileType javascript,html,css,php set sts=2
autocmd FileType javascript,css,php set textwidth=79

"Enable autocompletion
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType python set omnifunc=pythoncomplete#Complete

"Enable line numbers
autocmd FileType javascript,css,php set number

"Enable incremental search
autocmd FileType javascript,html,css,php set incsearch


set number
set background=dark
colorscheme slate
au FileType xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim
let g:neocomplcache_enable_at_startup = 1

set tabstop=4 shiftwidth=4 expandtab

"SuperTab default completion type
let g:SuperTabDefaultCompletionType = "<c-x><c-u>"


"moving between windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"remapping java correct to ctrl-1
nmap <silent> <F1> :JavaCorrect<CR>
