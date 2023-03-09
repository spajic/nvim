-- Automatically call PackerCompile after updating this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerCompile
  augroup end
]])

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'tiagovla/scope.nvim'
--  use 'zefei/vim-wintabs' -- giving a try to bufferline + scope

use {
	'rmagatti/auto-session',
	config = function()
		require("auto-session").setup {
			log_level = "error",
			auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
		}
	end
}

use {
  "nvim-telescope/telescope-frecency.nvim",
  config = function()
    require"telescope".load_extension("frecency")
  end,
  requires = {"kkharji/sqlite.lua"}
}

  use({
	  'morhetz/gruvbox',
	  as = 'gruvbox',
	  config = function()
		  vim.cmd('colorscheme gruvbox')
	  end
  })

  use {'lewis6991/gitsigns.nvim'}

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  
  -- Fuzzy Finder Algorithm which requires local dependencies to be built.
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } 
  
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  use('tpope/vim-fugitive')
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  } 
  use 'nvim-tree/nvim-web-devicons'

  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  -- LSP
 use { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    requires = {
      -- Automatically install LSPs to stdpath for neovim
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
    },
  }

  use({ -- Autocompletion
    'hrsh7th/nvim-cmp',
    requires = { {'hrsh7th/cmp-nvim-lsp'}, {'L3MON4D3/LuaSnip'}, {'saadparwaiz1/cmp_luasnip'} },
  })

  use('folke/neodev.nvim') -- LSP for lua and neovim API
  use({'j-hui/fidget.nvim'})  -- status updates for LSP


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
