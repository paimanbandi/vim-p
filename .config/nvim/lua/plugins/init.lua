local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'

  -- theme
  use 'joshdick/onedark.vim'

  -- file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'L3MON4D3/LuaSnip'
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-buffer', 'hrsh7th/cmp-nvim-lsp',
      'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
      'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
      'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
    }
  }
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use 'beauwilliams/statusline.lua'

  use 'Pocco81/AutoSave.nvim'
  use 'RRethy/vim-illuminate'
  use 'luochen1990/rainbow'
  use 'b3nj5m1n/kommentary'

  use 'norcalli/nvim-colorizer.lua'
  use 'vim-syntastic/syntastic'

  -- git
  use 'tveskag/nvim-blame-line'
  use 'mhinz/vim-signify'
  use 'kdheepak/lazygit.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- flutter
  use 'dart-lang/dart-vim-plugin'
  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
  if packer_bootstrap then
    require('packer').sync()
  end
end)
