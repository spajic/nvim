-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use({
	  'morhetz/gruvbox',
	  as = 'gruvbox',
	  config = function()
		  vim.cmd('colorscheme gruvbox')
	  end
  })

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  -- This is for fzf support in vim: Not sure if I need it or telescope can do everything
  -- Gives commands like :Files, :Lines, :Buffers, :Ag (uses external searcher ag for fuzzy search across files contents)
--  use('junegunn/fzf')
--  use('junegunn/fzf.vim')

  -- Fuzzy Finder Algorithm which requires local dependencies to be built.
  -- Only load if `make` is available. Make sure you have the system
  -- requirements installed.
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  
  
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  use('tpope/vim-fugitive')
  
  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }
  use('folke/neodev.nvim') -- LSP for lua and neovim API
  use({'j-hui/fidget.nvim', opts = {}})  -- status updates for LSP


  use {
	  "folke/which-key.nvim",
	  config = function()
		  vim.o.timeout = true
		  vim.o.timeoutlen = 300
		  require("which-key").setup {
			  -- your configuration comes here
			  -- or leave it empty to use the default settings
			  -- refer to the configuration section below
		  }
	  end
  }
end)
