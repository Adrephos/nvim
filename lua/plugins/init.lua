local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local repository = 'https://github.com/wbthomason/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = vim.fn.system({ 'git', 'clone', '--depth', '1', repository, install_path })
end

local ok, _ = pcall(require, "packer")
if not ok then return end

require('plugins.config.nvim_tree')
require('plugins.config.hop')
require('plugins.config.lualine')
require('plugins.config.presence')
require('plugins.config.mason')
require('plugins.config.cmp')
require('plugins.config.gitsigns')
require('plugins.config.indent_blankline')
require('plugins.config.noice')
require('plugins.config.treesitter')

return require('packer').startup(function(use)
	use 'tpope/vim-fugitive'
	use 'lewis6991/gitsigns.nvim'

	use 'jiangmiao/auto-pairs'
	use 'mattn/emmet-vim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'ThePrimeagen/harpoon'
	use 'phaazon/hop.nvim'
	use 'gelguy/wilder.nvim'

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

	use 'Adrephos/dracula.nvim'

	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-tree/nvim-tree.lua'
	use 'rcarriga/nvim-notify'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'folke/noice.nvim'
	use 'MunifTanjim/nui.nvim'
	use 'nvim-treesitter/nvim-treesitter'

	use 'andweeb/presence.nvim'
	use 'github/copilot.vim'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})

	if PACKER_BOOTSTRAP then require('packer').sync() end
end)
