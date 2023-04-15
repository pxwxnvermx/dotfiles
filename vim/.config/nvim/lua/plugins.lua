local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
local packer = require("packer") 

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use {'nvim-treesitter/nvim-treesitter', run = 'TSUpdate'}
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'SirVer/ultisnips'
  use 'quangnguyen30192/cmp-nvim-ultisnips'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
  }

  use 'ryanoasis/vim-devicons'
  use 'sainnhe/sonokai'
  use {'catppuccin/nvim', as = 'catppuccin' }

  if packer_bootstrap then
    require('packer').sync()
  end
end)