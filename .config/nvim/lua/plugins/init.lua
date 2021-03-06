return require('packer').startup(function(use)
  -- package manager
  use 'wbthomason/packer.nvim'

  -- theme
  use 'paimanbandi/tentara.nvim'

  -- file manager
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- syntax highlighting
  use 'pangloss/vim-javascript'

  -- snippet
  -- use 'glepnir/lspsaga.nvim'
  use 'L3MON4D3/LuaSnip'

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'quangnguyen30192/cmp-nvim-ultisnips',
      'hrsh7th/cmp-nvim-lua',
      'octaltree/cmp-look',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-calc',
      'f3fora/cmp-spell',
      'hrsh7th/cmp-emoji'
    }
  }

  -- use 'neovim/nvim-lspconfig'
  use {'neoclide/coc.nvim', branch = 'release'}

  -- debugging
  use 'Pocco81/DAPInstall.nvim'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

  -- ui
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use 'beauwilliams/statusline.lua'
  use 'luochen1990/rainbow'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-live-grep-raw.nvim'
    }
  }
  use 'lukas-reineke/indent-blankline.nvim'
  use 'RRethy/vim-illuminate'
  use 'norcalli/nvim-colorizer.lua'
  use 'vim-syntastic/syntastic'

  -- git
  use 'tveskag/nvim-blame-line'
  use 'mhinz/vim-signify'

  -- flutter
  use 'dart-lang/dart-vim-plugin'
  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}

  -- haskell
  use {
    'ndmitchell/ghcid', { rtp = 'plugins/nvim' }
  }

  -- html
  use {
    'mattn/emmet-vim',
    cmd = 'EmmetInstall',
    opt = true
  }

  -- others
  use 'numtostr/FTerm.nvim'
  use 'Pocco81/AutoSave.nvim'
  use 'b3nj5m1n/kommentary'
  use 'mhartington/formatter.nvim'
  use 'karb94/neoscroll.nvim'
  use {'edluffy/specs.nvim'}

end)
