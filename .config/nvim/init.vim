source ~/.config/nvim/vim-plug/plugins.vim
call deoplete#enable()

lua require('modules/eviline')
"lua require('modules/spaceline')


" editor
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set nu

let mapleader=' '

colorscheme tokyonight
"colorscheme neospace-theme
set termguicolors
set background=dark
"set noshowmode
"set noruler
"set laststatus=0


" airline theme
"let g:airline_theme='neospace'
" make airline faster
"let ttimeoutlen = 10
"let g:airline#extensions#ale#enabled = 1


" shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" basic
noremap <tab> gt
noremap <S-tab> gT

" latex
let g:vimtex_view_general_viewer = 'mupdf'
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" NERDTree
noremap <leader>nt :NERDTreeToggle<cr>
noremap <leader>nf :NERDTreeFind<cr>
noremap <leader>n<tab> :NERDTreeFocus<cr>

" dart & flutter
"let g:lsc_auto_map = v:true
let g:lsc_auto_map = {
  \ 'GoToDefinition': '<leader>gd',
  \ 'GoToDefinitionSplit': '<leader>gD',
  \ 'FindReferences': '<leader>gr',
  \ 'NextReference': '<C-n>',
  \ 'PreviousReference': '<C-p>',
  \ 'FindImplementations': '<leader>gI',
  \ 'FindCodeActions': '<leader>ga',
  \ 'Rename': '<leader>gR',
  \ 'ShowHover': v:true,
  \ 'DocumentSymbol': '<leader>go',
  \ 'WorkspaceSymbol': '<leader>gS',
  \ 'SignatureHelp': '<leader>gm',
  \ 'Completion': 'completefunc',
\}
noremap <leader>df :DartFmt<cr>
noremap <leader>fr :FlutterRun<cr>
noremap <leader>fd :FlutterDevices<cr>

