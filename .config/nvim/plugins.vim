call plug#begin()
    ""Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    ""LSPs
    Plug 'onsails/lspkind-nvim'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'

    ""Autocompletado
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/nvim-cmp'

    ""Snippets
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'rafamadriz/friendly-snippets'
    Plug 'honza/vim-snippets'

    
    ""Telescope
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-file-browser.nvim'

    ""Codi - Depurador interactivo
    Plug 'metakirby5/codi.vim'

    ""Iconos DEV
    Plug 'ryanoasis/vim-devicons'
call plug#end()
