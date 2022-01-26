" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.config/nvim/plugged')

  " theme
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

  " better syntax support
  Plug 'sheerun/vim-polyglot'

  " auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'

  " highlight chars for movements
  Plug 'unblevable/quick-scope'

  " delete trailing whitespace
  Plug 'bronson/vim-trailing-whitespace'

  " custom key mappings
  Plug 'folke/which-key.nvim'

  " File Explorer
  " Plug 'scrooloose/NERDTree'
  Plug 'kyazdani42/nvim-tree.lua'

  " easy lua key mapping
  Plug 'b0o/mapx.nvim'

  " prject management
  Plug 'ahmedkhalf/project.nvim'

  " git
  Plug 'nvim-lua/plenary.nvim'
  Plug 'TimUntersberger/neogit'
  Plug 'sindrets/diffview.nvim'

  " Latex support
  Plug 'lervag/vimtex'

  " code completion
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif

  " code snippets
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

  " language server communication
  Plug 'natebosch/vim-lsc'

  " dart/flutter
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'thosakwe/vim-flutter'
  Plug 'natebosch/vim-lsc-dart'

  " galaxyline
  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
  Plug 'kyazdani42/nvim-web-devicons'


  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " debug plugins
  Plug 'mfussenegger/nvim-dap'
  Plug 'nvim-telescope/telescope-dap.nvim'
  Plug 'rcarriga/nvim-dap-ui'
  Plug 'theHamsta/nvim-dap-virtual-text'
  Plug 'Pocco81/DAPInstall.nvim'

call plug#end()

