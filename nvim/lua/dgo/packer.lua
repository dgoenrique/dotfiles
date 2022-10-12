return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  --  TokyoNight theme
  use 'folke/tokyonight.nvim'

  -- Extensible Neovim Scrollbar
  use 'petertriho/nvim-scrollbar'
  
  --  Highly extendable fuzzy finder over lists
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "nvim-lua/plenary.nvim"

  use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Like NERDTree >> Needs more configuration for better visual
  use {
     'nvim-tree/nvim-tree.lua',
  }
 
  -- Language Server Client with COC >> Why not??
  use {'neoclide/coc.nvim', branch = 'release'}

end)
