execute pathogen#infect()
syntax on
filetype plugin indent on

" editor
set tabstop=2
set shiftwidth=2
set expandtab
set nu

" cursor
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
let &t_SI = "\e[5 q"
"let &t_SR = "\<esc>[5 q"
let &t_EI = "\e[2 q"
