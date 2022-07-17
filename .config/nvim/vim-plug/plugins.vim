" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.config/nvim/plugged')
  " theme
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  " todo
  Plug 'folke/todo-comments.nvim'
  " syntax highlighting
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " highlight chars for movements
  Plug 'unblevable/quick-scope'
  " delete trailing whitespace
  Plug 'bronson/vim-trailing-whitespace'
  " custom key mappings
  Plug 'folke/which-key.nvim'
  " File Explorer
  Plug 'kyazdani42/nvim-tree.lua'
  " project management
  Plug 'ahmedkhalf/project.nvim'
  " outline
  Plug 'simrat39/symbols-outline.nvim'
  " git
  "Plug 'nvim-lua/plenary.nvim'
  "Plug 'TimUntersberger/neogit'
  "Plug 'sindrets/diffview.nvim'
  " Latex support
  Plug 'lervag/vimtex'
  " code completion
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
  Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
  Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
  " language server communication
  Plug 'neovim/nvim-lspconfig'
  " dart/flutter
  "Plug 'dart-lang/dart-vim-plugin'
  "Plug 'thosakwe/vim-flutter'
  "Plug 'natebosch/vim-lsc-dart'
  " galaxyline
  "Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  " find files
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  " debug plugins
  Plug 'mfussenegger/nvim-dap'
call plug#end()

