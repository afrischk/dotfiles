source ~/.config/nvim/vim-plug/plugins.vim

let mapleader=' '

lua require('modules/lualine')
lua require('modules/project')
"lua require('modules/neogit')
lua require('modules/whichkey')
lua require('modules/debugger')
lua require('modules/languageserver')
lua require('modules/coq3rd')
lua require('modules/treesitter')
lua require('modules/symbols-outline')
lua require('modules/nvimtree')
lua require('modules/todo')


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

" mappings
set timeoutlen=500

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

" surround
lua << EOF
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("v", "\"", ":s/\\%V\\(.*\\)\\%V/\"\\1\"/<CR>", opts)
keymap("v", "\'", ":s/\\%V\\(.*\\)\\%V/\'\\1\'/<CR>", opts)
keymap("v", "(", ":s/\\%V\\(.*\\)\\%V/(\\1)/<CR>", opts)
keymap("v", "[", ":s/\\%V\\(.*\\)\\%V/[\\1]/<CR>", opts)
keymap("v", "{", ":s/\\%V\\(.*\\)\\%V/{\\1}/<CR>", opts)
EOF

" vimtex
let g:vimtex_view_general_viewer = 'zathura'
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" move among buffers with CTRL
noremap <C-j> :bnext<cr>
noremap <C-k> :bprev<cr>

let g:coq_settings = {'display.preview.border': 'single'}
