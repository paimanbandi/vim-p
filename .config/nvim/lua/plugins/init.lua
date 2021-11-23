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
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
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
    requires = { {'nvim-lua/plenary.nvim'} }
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

  -- others
  use 'numtostr/FTerm.nvim'
  use 'Pocco81/AutoSave.nvim'
  use 'b3nj5m1n/kommentary'
  use 'mhartington/formatter.nvim'
  use 'karb94/neoscroll.nvim'
  use {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  }
  use {'edluffy/specs.nvim'}

end)
