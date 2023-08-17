vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

    -- Kanagawa Theme
    use({ 
        'rebelot/kanagawa.nvim',
        as='kanagawa',
        config=function()
          -- vim.cmd('colorscheme kanagawa')
    end
    })

    -- Tokyonight Theme
    use({
        'folke/tokyonight.nvim',
        as='tokyonight',
        config=function()
            -- vim.cmd('colorscheme tokyonight-night')
    end
    })

    -- Gruvbox Theme
    use({
        'morhetz/gruvbox',
        config = function()
            -- vim.cmd.colorscheme('gruvbox')
        end
    })

    use({
        'catppuccin/nvim',
        as='catppuccin',
        config = function()
            -- vim.cmd.colorscheme('catppuccin')
        end
    })

    use ({
        'AlexvZyl/nordic.nvim',
        as='nordic',
        config = function()
            -- vim.cmd.colorscheme('nordic')
        end
    })

    use({
        'rmehri01/onenord.nvim',
        as='onenord',
        config = function()
            -- vim.cmd.colorscheme('onenord')
        end
    })

    use({
        'EdenEast/nightfox.nvim',
        as='nightfox',
        config = function()
            -- vim.cmd.colorscheme('carbonfox')
        end
    })

    use({
        'navarasu/onedark.nvim',
        as='onedark',
        config = function()
            -- vim.cmd.colorscheme('onedark')
        end
    })

    use({
        'rose-pine/neovim',
        as='rose-pine',
        config = function()
            vim.cmd.colorscheme('rose-pine')
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
        'neovim/nvim-lspconfig',
        'mfussenegger/nvim-dap',
        'jay-babu/mason-nvim-dap.nvim',
    })

    -- DAP UI
    use({
        'rcarriga/nvim-dap-ui',
        requires = { 'mfussenegger/nvim-dap' }
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
