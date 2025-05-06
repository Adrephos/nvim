local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local repository = 'https://github.com/wbthomason/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system({ 'git', 'clone', '--depth', '1', repository, install_path })
end

local ok, _ = pcall(require, "packer")
if not ok then return end

require('plugins.config.hop')
require('plugins.config.lualine')
require('plugins.config.presence')
require('plugins.config.mason')
require('plugins.config.cmp')
require('plugins.config.gitsigns')
require('plugins.config.indent_blankline')
require('plugins.config.noice')
require('plugins.config.treesitter')
require('plugins.config.avante')
require('plugins.config.oil')
require('plugins.config.mini_icons')
require('plugins.config.auto_session')
require('plugins.config.catppuccin')
require('plugins.config.global_note')
require('plugins.config.mason_tool_installer')

-- require('plugins.config.hex')

return require('packer').startup(function(use)
  -- Theme
  use { "catppuccin/nvim", as = "catppuccin" }

  use 'rmagatti/auto-session'

  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  use 'vidocqh/data-viewer.nvim'

  use 'jiangmiao/auto-pairs'
  use 'mattn/emmet-vim'
  use 'nvim-telescope/telescope.nvim'
  use {
    'smoka7/hop.nvim',
    tag = '*',
  }
  use 'gelguy/wilder.nvim'

  -- use 'romgrk/barbar.nvim'
  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { { "nvim-lua/plenary.nvim" } }
  }

  use 'elixir-editors/vim-elixir'
  use 'mhinz/vim-mix-format'
  use 'yuezk/vim-js'
  use 'HerringtonDarkholme/yats.vim'
  use 'MaxMEllon/vim-jsx-pretty'

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/cmp-path'

  use({
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    tag = "v2.*",
    -- install jsregexp (optional!:).
    run = "make install_jsregexp"
  })
  use 'rafamadriz/friendly-snippets'
  use 'mlaursen/vim-react-snippets'

  use 'rcarriga/nvim-notify'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'folke/noice.nvim'

  use 'nvim-treesitter/nvim-treesitter'
  use 'stevearc/dressing.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'MunifTanjim/nui.nvim'
  use 'MeanderingProgrammer/render-markdown.nvim'
  use 'echasnovski/mini.icons'
  use 'HakonHarnes/img-clip.nvim'

  -- Avante.nvim with build process
  use {
    'yetone/avante.nvim',
    branch = 'main',
    run = 'make',
    config = function()
      require('avante_lib').load()
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter-context',
    require('treesitter-context').setup({
      multiline_threshold = 1,
    }),
  }

  use 'andweeb/presence.nvim'

  use {
    'folke/todo-comments.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'neovim/nvim-lspconfig' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    },
    require('lspconfig')['hls'].setup {
      filetypes = { 'haskell', 'lhaskell', 'cabal' },
    }
  }

  use {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'echasnovski/mini.icons' },
    config = function()
      require("mini.icons").setup()
      require("mini.icons").mock_nvim_web_devicons()
    end
  }

  use {
    'javiorfo/nvim-springtime',
    requires = {
      "javiorfo/nvim-popcorn",
      "javiorfo/nvim-spinetta",
      "hrsh7th/nvim-cmp"
    },
    run = function()
      require 'springtime.core'.update()
    end,
    require 'springtime'.setup({
      dialog = {
        selection_keymap = "<S-Tab>",
        generate_keymap = "<C-Space>"
      }
    }),
  }

  -- use { "iamcco/markdown-preview.nvim" }

  -- Hex editor
  -- use 'RaafatTurki/hex.nvim'

  -- Color highlight
  use {
    'rrethy/vim-hexokinase',
    run = 'cd ~/.local/share/nvim/site/pack/packer/start/vim-hexokinase && make hexokinase'
  }

  require 'lspconfig'.nil_ls.setup {
    settings = {
      ['nil'] = {
        formatting = {
          command = { "nixpkgs-fmt" }
        }
      }
    }
  }

  use 'stevearc/oil.nvim'

  use {
    'refractalize/oil-git-status.nvim',
    after = {
      "oil.nvim",
    },
    config = function()
      require("oil-git-status").setup()
    end,
  }

  use { 'backdround/global-note.nvim' }

  use {
    'windwp/nvim-ts-autotag',
    require('nvim-ts-autotag').setup({
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false
      },
    })
  }

  use {
    '3rd/image.nvim',
    config = function()
      require('image').setup {
        backend = 'kitty',
        processor = "magick_cli",
        integrations = {
          markdown = {
            enabled = true,
            clear_in_insert_mode = true,
            download_remote_images = true,
            only_render_image_at_cursor = true,
            floating_windows = true,
            only_render_image_at_cursor_mode = "inline"
          },
        },
        max_width = nil,
        max_height = 30,
        kitty_tmux_warning = true,
      }
    end,
  }

  use { 'WhoIsSethDaniel/mason-tool-installer.nvim' }

  use {'kenn7/vim-arsync',
    requires = {
        {'prabirshrestha/async.vim'}
    }
  }

  if PACKER_BOOTSTRAP then require('packer').sync() end
end)
