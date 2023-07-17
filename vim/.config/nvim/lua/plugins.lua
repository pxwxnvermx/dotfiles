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
    use 'nvim-lua/plenary.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
    use {'nvim-telescope/telescope.nvim', tag = '0.1.1'}

    use 'nvim-lualine/lualine.nvim'
    use 'ryanoasis/vim-devicons'
    use {'catppuccin/nvim', as = 'catppuccin' }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {'hrsh7th/cmp-cmdline'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
