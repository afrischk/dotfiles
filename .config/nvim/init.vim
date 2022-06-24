source ~/.config/nvim/vim-plug/plugins.vim

let mapleader=' '

lua require('modules/lualine')
lua require('modules/project')
"lua require('modules/neogit')
lua require('modules/whichkey')
lua require('dbg/init')
lua require('dbg/ui')
lua require('modules/languageserver')
lua require('modules/coq3rd')
lua require('modules/treesitter')
lua require('modules/symbols-outline')


" editor
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set nu
set rnu
"Map Neovim yank's buffer to your clipboard buffer
set clipboard+=unnamedplus
set completeopt-=preview

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

" vimtex
let g:vimtex_view_general_viewer = 'zathura'
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" NvimTree
noremap <leader>nt :NvimTreeToggle<cr>
noremap <leader>nf :NvimTreeFindFile<cr>
noremap <leader>n<tab> :NvimTreeFocus<cr>

" projects
noremap <leader>fp <cmd>Telescope projects<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" dart & flutter
" noremap <leader>f :DartFmt<cr>
" noremap <leader>r :FlutterRun<cr>
" noremap <leader>d :FlutterDevices<cr>

" move among buffers with CTRL
noremap <C-j> :bnext<cr>
noremap <C-k> :bprev<cr>

" symbols outline
noremap <leader>o <cmd>SymbolsOutline<cr>

let g:coq_settings = {'display.preview.border': 'single'}

nnoremap <leader>5 :lua require('dap').continue()<cr>
nnoremap <leader>6 :lua require('dap').step_over()<cr>
nnoremap <leader>7 :lua require('dap').step_into()<cr>
nnoremap <leader>8 :lua require('dap').step_out()<cr>
nnoremap <leader>dt :lua require('dap').terminate()<cr>
nnoremap <leader>b :lua require('dap').toggle_breakpoint()<cr>
nnoremap <leader>c :lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>
nnoremap <leader>duo :lua require('dapui').open()<cr>
nnoremap <leader>duc :lua require('dapui').close()<cr>
nnoremap <leader>du :lua require('dapui').toggle()<cr>
