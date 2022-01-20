" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.config/nvim/plugged')

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'

  " File Explorer
  Plug 'scrooloose/NERDTree'

  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'

  " code completion
  "Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
  " 9000+ Snippets
  "Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
  " 3rd party
  "Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
   
  " Latex support
  Plug 'lervag/vimtex'

  " deoplete
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif

  " Ultisnip
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
  Plug 'bronson/vim-trailing-whitespace'

  " dart/flutter
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'thosakwe/vim-flutter'
  Plug 'natebosch/vim-lsc'
  Plug 'natebosch/vim-lsc-dart'
  
  " galaxyline
  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
  " If you want to display icons, then use one of these plugins:
  Plug 'kyazdani42/nvim-web-devicons' " lua
  "Plug 'Avimitin/nerd-galaxyline'
  "Plug 'Avimitin/neovim-deus'
   
  " theme
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  "Plug 'lukelarsen/neospace-theme'

call plug#end()

"require("coq_3p") {
"  { src = "vimtex", short_name = "vTEX" }
"}
