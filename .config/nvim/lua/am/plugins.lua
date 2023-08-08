vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

    -- Kanagawa Theme
    use({ 
        'rebelot/kanagawa.nvim',
        as='kanagawa',
        config=function()
    --       vim.cmd('colorscheme kanagawa')
    end
    })

    -- Tokyonight Theme
    use({
        'folke/tokyonight.nvim',
        as='tokyonight',
        config=function()
            vim.cmd('colorscheme tokyonight-night')
    end
    })

    -- Lualine
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt=true }
    })
    
    -- Autopairs
    use({
        'windwp/nvim-autopairs',
        config=function()
            require('nvim-autopairs').setup {}
        end
    })

    -- Nvim Treesitter
    use(
        'nvim-treesitter/nvim-treesitter',
        { run = ':TSUpdate' }
    )
    
    -- Mason
    use({
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig'
    })

    -- CMP / Completion Plugins
    use ({
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
    })

    use ({
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets'
    })

    -- File Tree
    use ({
        'nvim-tree/nvim-tree.lua',
        'nvim-tree/nvim-web-devicons'
    })

    -- Indent Guides
    use (
        'lukas-reineke/indent-blankline.nvim'
    )

    -- Commentary
    use 'tpope/vim-commentary'

    -- Toggleterm
    use ({
        'akinsho/toggleterm.nvim',
        tag='*',
        config = function()
            require('toggleterm').setup()
        end
    })

    -- Barbar
    use ({
        'romgrk/barbar.nvim',
        requires = {
            'nvim-tree/nvim-web-devicons',
            'lewis6991/gitsigns.nvim'
        }
    })
end)
