source ~/.config/nvim/vim-plug/plugins.vim
" call deoplete#enable()

let mapleader=' '

lua require('modules/eviline')
lua require('modules/project')
lua require('modules/neogit')
lua require('modules/whichkey')
lua require('dbg/init')
lua require('modules/languageserver')
lua require('modules/coq3rd')


" editor
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set nu
"Map Neovim yank's buffer to your clipboard buffer
set clipboard+=unnamedplus

colorscheme tokyonight
set termguicolors
set background=dark

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

" NvimTree
noremap <leader>nt :NvimTreeToggle<cr>
noremap <leader>nf :NvimTreeFindFile<cr>
noremap <leader>n<tab> :NvimTreeFocus<cr>

" projects
noremap <leader>pl :Telescope projects<cr>

" dart & flutter
noremap <leader>ff :DartFmt<cr>
noremap <leader>fr :FlutterRun<cr>
noremap <leader>fd :FlutterDevices<cr>

" git
noremap <leader>g :Neogit<cr>

" code naviation
"let g:lsc_auto_map = v:true
let g:lsc_auto_map = {
  \ 'GoToDefinition': '<leader>gd',
  \ 'GoToDefinitionSplit': '<leader>gD',
  \ 'FindReferences': '<leader>gr',
  \ 'NextReference': '<leader>gn',
  \ 'PreviousReference': '<leader>gp',
  \ 'FindImplementations': '<leader>gI',
  \ 'FindCodeActions': '<leader>ga',
  \ 'Rename': '<leader>gR',
  \ 'ShowHover': v:true,
  \ 'DocumentSymbol': '<leader>go',
  \ 'WorkspaceSymbol': '<leader>gS',
  \ 'SignatureHelp': '<leader>gm',
  \ 'Completion': 'completefunc',
\}
