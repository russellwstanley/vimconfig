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
"autocmd FileType javascript,html,css,php set ai
"autocmd FileType javascript,html,css,php set sw=2
"autocmd FileType javascript,html,css,php set ts=2
"autocmd FileType javascript,html,css,php set sts=2
"autocmd FileType javascript,css,php set textwidth=79

"Enable autocompletion
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd Filetype php set omnifunc=phpcomplete#CompletePHP
autocmd Filetype sql set omnifunc=sqlcomplete#Complete

"Enable line numbers
autocmd FileType javascript,css,php set number

"Enable incremental search
autocmd FileType javascript,html,css,php set incsearch


set number
set background=dark
colorscheme slate
au FileType xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim
let g:neocomplcache_enable_at_startup = 1


"SuperTab default completion type
let g:SuperTabDefaultCompletionType = 'context'



"moving between windows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>


let g:debuggerPort = 9002

set smartindent
set tabstop=4 
set shiftwidth=4 
set expandtab


"Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

set runtimepath^=~/.vim/bundle/ctrlp.vim
